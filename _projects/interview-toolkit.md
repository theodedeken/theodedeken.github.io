---
layout: project
title: Interview Toolkit
subtitle: Generating my resumes
key: interview-toolkit
thumb: /assets/img/blog/leveling-up-my-resume/thumb.png
permalink: /projects/interview-toolkit
description: >-
    Made a python command line script to generate my resumes and cover letters using my own LaTeX template.
time_format: "%B %Y"
started: 2019-02-01
ended: 2020-04-14
language: 
    - python:
        frameworks: []
    - tex:
        frameworks: []
featured: false
status: done
links: 
    - type: github
      url: https://github.com/theodedeken/interview-toolkit
      text: Source 
tags: 
    - job
    - resume
    - generator
    - command line
    - latex
---
When starting to look for work, I noticed how the process of making a resume includes a lot of repetitive work.
As a true computer scientist I looked into automating this process. 
The first step was to write my own LaTeX template.
Afterwards I wrote a simple Python script that can generate a resume or a cover letter based on a YAML file specifying the contents.
Now making a resume requires me only to modify the content of the YAML file and then I can effortlessly generate a resume out of that.

The code and template are all open source and can be found on [Github](https://github.com/theodedeken/interview-toolkit).