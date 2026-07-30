---
title: 'Error Growth Characterization Associated With Lateral Boundary Conditions in Idealized Moist Baroclinic Wave Simulations'

authors:
  - LMJ
  - PSH

date: '2026-07-29T00:00:00Z'
publishDate: '2026-07-29T00:00:00Z'
publication_types: ['2']

publication: '*Journal of Advances in Modeling Earth Systems, 18(8)*'
publication_short: 

abstract: "This study investigates numerical error growth mechanisms associated with lateral boundary conditions (LBCs) and their sensitivity to update frequency within a “Big-Brother” framework. Using an idealized moist WRF baroclinic wave simulation, a high-resolution reference is compared against three nested configurations: traditional one-way 6-hr and 3-hr offline updates, and a two-way online approach. Results characterize error evolution as a hybrid process, where LBC update frequency and nesting configuration dictate the transition between externally forced boundary noise and internal intrinsic dynamics. Crucially, the two-way configuration substantially reduces the rapid initial adjustment evident in one-way offline experiments. In one-way experiments, Difference Total Energy surges immediately during the initial stage, dominated by the large-scale (𝜆 >1000 km) component, reflecting a structural nesting adjustment associated with offline LBC treatment. Conversely, the two-way experiment suppresses this initial growth; its subsequent evolution is driven by small-scale (𝜆 <200 km) instabilities exhibiting an upscale error cascade. Spectral analysis reveals a significant vertical disparity in predictability limits. In the upper troposphere, the two-way configuration delays saturation below the 60% threshold and prevents the total saturation (95% limit) observed in one-way runs by Day 5. However, this advantage is notably reduced in the moist mid-troposphere, where all experiments converge rapidly. Additional sensitivity experiments with a 72-hr spin-up confirm that this predictability hierarchy reflects persistent boundary coupling rather than temporary initialization artifacts. This work provides a robust theoretical basis for optimizing lateral boundary coupling in regional weather prediction."

tags:
  - Lateral boundary conditions
  - Nesting configuration
  - Baroclinic wave simulation
  - Model predictability

featured: true

links:
  - name: Paper
    url: https://doi.org/10.1029/2025MS005734
    
---
