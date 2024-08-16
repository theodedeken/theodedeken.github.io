---
layout: project
title: COVID-19 Observables
subtitle: Visualizing Belgian COVID data using D3
key: covid-19-observables
thumb: /assets/img/projects/covid-19-observables.jpg
permalink: /projects/covid-19-observables
description: >-
    Due to the global COVID-19 pandemic I was temporarily unemployed.
    I made good use of my time to learn D3 and made some visualizations of the situation in Belgium
time_format: "%B %Y"
started: 2020-04-01
ended: now
language: 
    - javascript:
        frameworks:
            - D3
            - topojson 
featured: true
status: done
links: 
    - type: web
      url: https://observablehq.com/@theodedeken/covid-19-in-belgium
      text: COVID-19 in Belgium
    - type: web
      url: https://observablehq.com/@theodedeken/covid-19-mortality-in-belgium
      text: COVID-19 mortality in Belgium
tags: 
    - data visualization
    - interactive
    - covid-19
    - open data
    - observable
---
While the work for my volunteership in Sweden was drying up due to the COVID-19 pandemic, I took advantage of the extra time by learning D3.
Almost simultaneously Sciensano published the data of the outbreak in Belgium as [open data](https://epistat.wiv-isp.be/covid/).
So I made some interactive visualizations of the data on [Observable](https://observablehq.com).

They can be viewed [here](https://observablehq.com/collection/@theodedeken/covid-19-in-belgium).

## COVID-19 Mortality in Belgium

<div class="ui raised segment">
<div id="observablehq-4f1219a9"></div>
</div>
<script type="module">
import {Runtime, Inspector} from "https://cdn.jsdelivr.net/npm/@observablehq/runtime@4/dist/runtime.js";
import define from "https://api.observablehq.com/@theodedeken/covid-19-mortality-in-belgium.js?v=3";
const inspect = Inspector.into("#observablehq-4f1219a9");
(new Runtime).module(define, name => (name === "main") && inspect());
</script>

