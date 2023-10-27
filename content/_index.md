---
# Leave the homepage title empty to use the site title
title: Home
date: 2022-10-24
type: landing


sections:
  - block: hero
    content:
      text:  


        Laboratory for Atmospheric Modelling Research (LAMOR) at Yonsei, since 2017

        
      cta:
        label: What we study
        url: research/
      cta_alt:
        label: Who we are
        url: members/

    design:
      # Choose an optional background color, gradient, image, or video
      background:
        gradient_end: '#1976d2'
        gradient_start: '#004ba0'
        text_color_light: true

  - block: collection
    id: posts
    content:
      title: Recent Publications
      subtitle: ''
      text: ''
      # Choose how many pages you would like to display (0 = all pages)
      count: 3
      # Filter on criteria
      filters:
        # The folders to display content from
        folders:
          - publication
        author: ""
        category: ""
        tag: ""
        publication_type: ""
        featured_only: false
        exclude_featured: false
        exclude_future: false
        exclude_past: false
      # Choose how many pages you would like to offset by
      # Useful if you wish to show the first item in the Featured widget
      offset: 0
      # Field to sort by, such as Date or Title
      sort_by: 'Date'
      sort_ascending: false
    design:
      # Choose a listing view
      view: compact
      # Choose single or dual column layout
      columns: '1'
---

