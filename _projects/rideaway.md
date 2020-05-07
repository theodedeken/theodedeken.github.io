---
layout: project
title: Rideaway (#oSoc17)
subtitle: Calculating routes over the Brussels bike network
key: rideaway
thumb: /assets/img/projects/rideaway.jpg
permalink: /projects/rideaway
description: >-
    I helped develop a cycling routeplanner to be used for the Brussels bike network.
time_format: "%-d %b %Y"
started: 2017-07-03
ended: 2017-07-28
language: 
    - csharp:
        frameworks:
            - Itinero
            - ASP.NET
    - javascript:  
        frameworks: 
            - Mapbox
featured: false
status: done
links: 
    - type: github
      url: https://github.com/oSoc17/rideaway-backend
      text: Backend (Source)
    - type: github
      url: https://github.com/oSoc17/rideaway-frontend
      text: Frontend (Source)
    - type: web
      url: https://routeplanner.bike.brussels/
      text: Routeplanner app 
    - type: web
      url: https://2017.summerofcode.be/
      text: Open Summer of Code 2017
tags: 
    - cycling
    - brussels
    - navigation
    - network
    - frontend
    - backend
    - open summer of code
---

In 2017 I participated in [Open Summer of Code](https://2017.summerofcode.be/), this is a project where several teams of students work on real life open innovation projects. 
I was tasked to develop the backend of a bicycle navigation application commissioned by Brussels Mobility. 
At the end of the project, I also helped develop some parts of the frontend.

Brussels is home to a quite extensive cycling network, made for cyclist to get to anywhere in the city in a nice and safe way.
The problem was that this network was not well known and the only way to view it was to buy a map.
Due to the complexity of the network, planning your route on the map was rather difficult when your destination was far away.
We set out to solve these problems by developing a route planner that could calculate a route over the network for you and then guide you along it.
Simultaneously another team worked on tools to help with the ingestion of the network into [OpenStreetMap](https://www.openstreetmap.org/) and the subsequent quality control.
Data about the network was provided by Brussels Mobility as open data.
In a month we developed a prototype that was able to show your route over the network and a simplified guiding interface.

The resulting app was then further developed the next year and is now released [here](https://routeplanner.bike.brussels/) (The scope was reduced to only a routeplanner with the possiblity of exporting the routes).