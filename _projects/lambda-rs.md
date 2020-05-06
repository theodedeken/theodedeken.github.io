---
layout: project
title: Lambda Interpreter
subtitle: A lambda interpreter written in Rust
key: lambda-rs
permalink: /projects/lambda-rs
thumb: /assets/img/projects/lambda-rs.jpg
links:
    - type: github
      url: https://github.com/theodedeken/lambda-rs
      text: Source
time_format: "%B %Y"
started: 2018-07-01
ended: 2018-08-01
language: 
    - rust:
        frameworks:
            - pest
status: done
tags:
    - lambda
    - functional programming
    - interpreter
description: >-
    An assignment for a course about the fundamentals of programming.
    Really liked the end result so made it open source.
---
In my first master year I got an assignment for the course 'Fundamentals of programming' to write an interpreter for the simply typed lambda calculus, extended with records, variants and recursion.
There was complete freedom on how to implement this interpreter.
As I had just discovered and started learning [Rust](https://www.rust-lang.org/) a few months back I saw this as a great oppurtunity to get some practice.

So I made [lambda-rs](https://github.com/theodedeken/lambda-rs), a lambda interpreter written in Rust using the [pest](https://crates.io/crates/pest) crate.
Afterwards I released it with an MIT license.