#!/usr/bin/env bash
set -euo pipefail

# 이 스크립트를 저장한 저장소 루트에서 실행
cd -- "$(dirname -- "${BASH_SOURCE[0]}")"

HUGO_VERSION="0.119.0"
HUGO_DIR="/usr/local/hugo/bin"
HUGO_BIN="${HUGO_DIR}/hugo"

# Codespaces 환경 확인
: "${CODESPACE_NAME:?Codespaces 터미널에서 실행해 주세요.}"
: "${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN:?Codespaces 포워딩 도메인이 없습니다.}"

# 지정한 버전의 Extended 바이너리인지 확인
hugo_ready() {
    local candidate="${1:-${HUGO_BIN}}"
    local info

    [[ -x "${candidate}" ]] || return 1
    info="$("${candidate}" version 2>/dev/null)" || return 1

    [[ "${info}" == "hugo v${HUGO_VERSION}-"* ||
       "${info}" == "hugo v${HUGO_VERSION}+"* ]] &&
    [[ "${info}" == *"+extended"* ]]
}

if ! hugo_ready; then
    system_hugo="$(command -v hugo || true)"

    if [[ -n "${system_hugo}" ]] && hugo_ready "${system_hugo}"; then
        HUGO_BIN="${system_hugo}"
    fi
fi

if ! hugo_ready; then
    echo "Hugo ${HUGO_VERSION} Extended를 설치합니다."

    # 설치 중 오류가 발생해도 임시 파일 정리
    (
        install_tmp="$(mktemp -d)"
        trap 'rm -rf -- "${install_tmp}"' EXIT

        curl --fail --location --retry 3 \
            "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.tar.gz" \
            --output "${install_tmp}/hugo.tar.gz"

        tar -xzf "${install_tmp}/hugo.tar.gz" \
            -C "${install_tmp}" hugo
        chmod +x "${install_tmp}/hugo"

        # 설치 경로에 반영하기 전에 실행 확인
        "${install_tmp}/hugo" version

        mkdir -p "${HUGO_DIR}"
        mv -- "${install_tmp}/hugo" "${HUGO_BIN}"
    )
fi

if ! hugo_ready; then
    echo "오류: Hugo ${HUGO_VERSION} Extended 실행을 확인하지 못했습니다." >&2
    exit 1
fi

"${HUGO_BIN}" version

PREVIEW_URL="https://${CODESPACE_NAME}-1313.${GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN}"
echo "미리보기: ${PREVIEW_URL}"

exec "${HUGO_BIN}" server \
    --bind 0.0.0.0 \
    --port 1313 \
    --baseURL "${PREVIEW_URL}" \
    --appendPort=false \
    --liveReloadPort 443 \
    --disableFastRender