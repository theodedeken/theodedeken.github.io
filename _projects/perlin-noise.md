---
layout: project
title: Perlin Noise
key: perlin-noise
subtitle: Generating perlin noise in java
thumb: /assets/img/projects/perlin-noise.jpg
permalink: /projects/perlin-noise
skills:
    java:
        JavaFX:
time_format: "%B %Y"
started: 2016-12-01
ended: 2017-02-01
featured: false
status: done
tags:
  - random
  - noise
  - world generation
  - game development
  - fractal
description: >-
  An experiment implementing a Perlin noise generator in Java.
  Used it to create a randomly generated world.
links:
  - type: github
    url: https://github.com/theodedeken/perlin-noise
    text: Source
---
Randomly generated worlds are being used more and more in game development.
Most of these worlds are generated using some kind of noise.
Out of interest I implemented a [Perlin Noise](https://en.wikipedia.org/wiki/Perlin_noise) generater in Java.
Then I extended it to generate fractal noise by combining multiple noise images with different scales.

As a proof of concept I made a randomly generated world.