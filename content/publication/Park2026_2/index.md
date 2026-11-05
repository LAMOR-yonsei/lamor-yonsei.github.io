---
title: 'Implementation and Stability Analysis of a Smoothed Hybrid Vertical Coordinate (SHVC) in WRF'

authors:
  - PSH
  - Joseph B. Klemp
  - PJS
  - Yong-Hee Lee
  - Eunhee Lee

date: '2026-11-04T00:00:00Z'
publishDate: '2026-11-04T00:00:00Z'
publication_types: ['2']

publication: '*Monthly Weather Review*'
publication_short: 

abstract: "This study presents the development and implementation of a Smoothed Hybrid Vertical Coordinate (SHVC) within the Weather Research and Forecasting (WRF) model, extending the framework suggested by Choi and Klemp (2021) into a full three-dimensional, real-data application. While hybrid coordinates are widely used in numerical weather prediction, they often generate spurious small scale noise when high resolution simulations are initialized over complex terrain. The SHVC addresses this challenge by allowing coordinate surfaces to decouple from the underlying topography more rapidly than standard systems. A central contribution of this work is the rigorous mathematical derivation of monotonicity constraints to ensure numerical stability over extreme terrain gradients. Stability stress tests conducted for the East Asian domain reveal that a first-order polynomial formulation for the coordinate smoothing function provides a superior practical stability margin compared to the higher-order polynomials utilized in previous studies. Real-data simulations of February 2025 winter cases characterized by strong low-level flow demonstrate that the SHVC reduces initial numerical imbalances across different horizontal scales. Horizontal kinetic energy spectra illustrate that the SHVC suppresses spurious grid scale energy inflation within the short wavelength band near the effective model resolution. While the bulk of the spectra merges over time because of the natural physical development of small scale activity, the SHVC consistently maintains a lower and more stable noise baseline at the grid resolution limit throughout the forecast cycle without introducing artificial over damping or additional computational overhead. These results indicate that the SHVC provides a robust and efficient numerical framework for high-resolution mesoscale modeling over complex topography."

tags:

featured: true

links:
  - name: Paper
    url: https://doi.org/10.1175/MWR-D-26-0042.1
    
---
