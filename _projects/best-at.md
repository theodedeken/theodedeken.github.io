---
layout: project
title: Best@ (#oSoc19)
subtitle: Open BeSt Addresses
key: best-at
thumb: /assets/img/projects/best-at.jpg
permalink: /projects/best-at
description: >-
    BeSt-Add (Belgian Streets & Addresses) are available as open data in XML. 
    With this project we made this dataset more accessible to the general public, converted it to other formats and promoted the use of it.
time_format: "%-d %b %Y"
started: 2019-07-01
ended: 2019-07-26
language: 
    - python:
        frameworks:
            - bokeh
            - pandas
            - numpy
            - datashader  
featured: true
status: done
links: 
    - type: github
      url: https://github.com/oSoc19/best
      text: Source
    - type: web
      url: https://osoc19.github.io/best/
      text: Overview
    - type: web
      url: https://2019.summerofcode.be/
      text: open Summer of code 2019
tags: 
    - open summer of code
    - csv
    - xml
    - open data
    - fod bosa
    - command line
---
In 2019 I participated again in [open Summer of Code](https://2019.summerofcode.be/).
This year I was part of the Best@ team, where we worked together with [FOD BOSA DT](https://bosa.belgium.be/language_selection) on an open address project. 

Bosa had started this project after recently opening up a [dataset](https://opendata.bosa.be/index.nl.html) with all the addresses in Belgium along with their coordinates.
The data was only available in XML format and so we were tasked to develop tools to transform this data to other formats.
Additionally we were asked to help make this dataset more accessible and to promote it so others could find it.
During the month of July I helped develop tools and notebooks using the data.

## Tools
We created a variety of Python command line tools to convert, filter and use the data.

The tools allow you to:

* Download the zipped dataset of the addresses. 
* Extract the xml files to a directory. 
* Convert to the csv format or other formats such as GeoJSON and Shapefiles. 
* Filter the file on postalcode, region and bounding box. 
* Use the addresses to match and complete other address datasets. 

## Notebooks
With the address data converted by the tools it became much easier to explore it. 
This allowed me to make a collection of Jupyter [notebooks](https://osoc19.github.io/best/notebooks/) using the address data in fun and interesting ways

# Visualisations
![bestat](/assets/img/projects/best-at.jpg "The Addresses in Belgium visualized with a heatmap")

I also made a heatmap visualization of the addresses in Belgium using [datashader](https://datashader.org/) showing the density of buildings in our country.
For the demo day I combined this with [bokeh](https://docs.bokeh.org/en/latest/index.html) to make it interactive.

## Openaddresses
With our tools we were also able to include the data into [openaddresses.io](https://openaddresses.io/), a global open address file that is already used by many applications. 
With this, we were able to set up a Geocoder service in no time, which was then actually used by some other teams during the project.
