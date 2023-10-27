---
# Leave the homepage title empty to use the site title
title: Home
date: 2022-10-24
type: landing

sections:
  - block: hero
    content:
      text: |
        <br>
        
        Laboratory for Atmospheric Modelling Research (LAMOR) at Yonsei, directed by Prof. Sang-Hun Park since 2017

      image:
        filename: main-image.jpg

  - block: features
    content:
      title: About Us
      subtitle: Section subtitle
      text: Section text
      items:
        - name: test 1
          description: 90%
        - name: test 2
          description: 100%
        - name: test 3
          description: 10%

      subtitle: Section subtitle

        - name: test 4
          description: 90%
        - name: test 5
          description: 100%
        - name: test 6
          description: 10%

  - block: markdown
    content:
      title:
      subtitle: ''
      text:
    design:
      columns: '1'
      background:
        image: 
          filename: coders.jpg
          filters:
            brightness: 1
          parallax: false
          position: center
          size: cover
          text_color_light: true
      spacing:
        padding: ['20px', '0', '20px', '0']
      css_class: fullscreen
---