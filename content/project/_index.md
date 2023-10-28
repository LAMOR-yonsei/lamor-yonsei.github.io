---
title: Projects
type: landing

sections:
  - block: portfolio
    id: projects
    content:
      title: Projects
      subtitle: My subtitle
      text: Add any **markdown** formatted content here - text, images, videos, galleries - and even HTML code!
      #filters:
      #  # Folders to display content from
      #  folders:
      #    - project

      buttons:
        - name: All
          project_type: '*'
        - name: Current
          project_type: current
        - name: Previous
          project_type: previous

      default_button_index: 0
      # Default portfolio filter button
      # 0 corresponds to the first button below and so on
      # For example, 0 will default to showing all content as the first button below shows content with *any* tag
    
    design:
      # See Page Builder docs for all section customization options.
      # Choose how many columns the section has. Valid values: '1' or '2'.
      columns: '1'
      # Choose a listing view
      view: showcase
      # For Showcase view, flip alternate rows?
      flip_alt_rows: false
---