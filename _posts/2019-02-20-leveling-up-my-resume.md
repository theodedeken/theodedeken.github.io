---
layout: post
title: Leveling up my resume
author: Theo Dedeken
project: interview-toolkit
thumb: /assets/blog/leveling-up-my-resume/thumb.png
header: /assets/blog/leveling-up-my-resume/header.png
permalink: /blog/2019/leveling-up-my-resume
tags: 
    - latex
    - python
    - career
    - resume
    - job
excerpt: |-
    As my time studying is coming to an end, it is becoming time to start looking towards what is next in my future. Internship, job or volunteering, they all need a resume and a cover letter. For this round of applications I wanted to upgrade my process of constructing my resume and cover letter.
---

As my time studying is coming to an end, it is becoming time to start looking towards what is next in my future. Internship, job or volunteering, they all need a resume and a cover letter. As a true scientist my previous resumes and cover letters were all written in Latex. While Latex is fantastic in many aspects, some difficulties do arise when you try to use it in a context of a resume which likely will have a very distinct style. So for this round of applications I wanted to upgrade my process of constructing my resume and cover letter.

## Making my own template
After reading this excellent [Medium post](https://medium.freecodecamp.org/writing-a-killer-software-engineering-resume-b11c91ef699d), which advocates a quite simple structure with clear concise information, I decided to make my own Latex template. 

Writing your own template is rather easy for simple cases, but to add some more complex concepts you really start to notice the limitations of the Tex language. For example the use of simple control sequences like `if else` is very tedious. While making this I gained a lot more respect for the creators of some of the Latex packages in the ecosystem, writing such complex things must be a pain. 

## Generation from yml
The next step was to improve the creation of multiple resumes and cover letters. When writing multiple resumes for different applications, there will likely be only little differences adapting to the application itself with the most part being the same in all files. Doing this by editing `tex` files is a bit tedious as content and structure are intertwined. 

To solve this I seperated the content of my resume and cover letter to `yml` files, which then get processed by scripts to generate the corresponding `tex` files to generate the pdfs.

## Find this on Github
I have uploaded both of my templates as well as my script to Github in [this repository](https://github.com/theodedeken/career-tools). It has an open source license, so feel free to use it if you want! 