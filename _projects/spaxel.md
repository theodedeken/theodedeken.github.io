---
layout: project
title: Spaxel
key: spaxel
subtitle: A small game written in Java
thumb: /assets/img/projects/spaxel.png
description: >-
    A journey of making a small game from scratch. While being quite small this project has provided me with
    loads of experience in different programming concepts. Maybe some day I will even finish it...
time_format: "%Y"
started: 2014-01-01
ended: now
skills:
    java:
        LWJGL:
        Jackson:
links:
    - type: github
      url: https://github.com/theodedeken/Spaxel
      text: Source
featured: false
status: active
tags:
    - game development
    - opengl
    - lwjgl
    - space
    - pixel art
---

The journey of making this game started in the beginning of my academic career, I just learned my first programming language and I liked playing games.
The decision of also trying to make a game was easily made and with the help of some tutorials I put down my first lines of code.
Over the years development has been very irregular and for large periods of time no work was done.

## The beginning
The first lines of code where written as early as 2014 and at that time I used not a single dependency.
Partly maybe because I had still no idea how dependencies worked in Java, but probably also because I was eager to learn all the kinds of parts that make up a game.

## Rendering on the GPU
As the first version of my game was based on code of a tutorial of a simple game, all the graphics in the game were still being rendered by the CPU.
This became a problem as I began to think about adding more visual effects like particles, blur and distortion.
Early tests by implementing these things in the current engine showed that adding them would reduce the game to a slideshow.

I decided to rework the whole rendering system of the engine and to switch over to LWJGL.
This also required me to learn some OpenGL and GLSL.
I ultimately set up an instanced rendering system where all sprites are first buffered together and subsequently rendered all in one render call.

## Rework after rework
Over the years this project has undergone more reworks then I can count.
Sometimes I even think the whole purpose of this piece of software is to be a playground for me to test my new skills as I grow as a software developer.
Maybe some day I might call this game finished, even though it will probably never be what I envisioned it to be, I'm am still proud of what I made and what it has tought me.

## The state of the game
Currently the game is at a reasonably playable state and it has quite an interesting engine under the belt.
As the engine evolved over the years some notable systems have been implemented.
These include:

- A UI system with a very slimmed down version of cascading stylesheets
- An OpenGL rendering system with sprite buffering, different layers, texture packing, postprocessing steps...
- Separation of the game's content from the code by use of json property files
