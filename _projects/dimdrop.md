---
layout: project
title: dimdrop
subtitle: Python package to perform dimensionality reduction using neural networks
key: dimdrop
thumb: /assets/img/projects/dimdrop.jpg
permalink: projects/dimdrop
description: >-
    I wrote a lot of code for my thesis, so I decided afterwards to release it as an open source Python package.
time_format: "%Y"
started: 2019-01-01
ended: now
language: 
    - python:
        frameworks:
            - keras
            - numpy
            - sklearn 
featured: false
status: done
links: 
    - type: github
      url: https://github.com/theodedeken/dimdrop
      text: Source
    - type: docs
      url: https://www.theodedeken.xyz/dimdrop/
      text: Documentation 
    - type: web
      url: https://pypi.org/project/dimdrop/ 
      text: pip Package
tags: 
  - machine learning
  - neural networks
  - pip
  - package
---
As a result of writing my thesis I had a lot of models for doing dimensionality reduction implemented in Python using [keras](https://keras.io/).
I decided to bundle them into a Python package and to publish it on pip as open source.

## Models
A few models for doing dimensionality reduction using neural networks (mostly autoencoders) are provided by the library

### Parametric t-SNE
Implementation of the parametric variant of t-distributed neighborhood embedding.
Based on this paper:

>  Laurens van der Maaten. Learning a parametric embedding by preserving local structure. In David van Dyk and Max Welling, editors, *Proceedings of the Twelth International Conference on Artificial Intelligence and Statistics*, volume 5 of *Proceedings of Machine Learning Research*, pages 384–391, Hilton Clearwater Beach Resort, Clearwater Beach, Florida USA, 16–18 Apr 2009. PMLR.

### Autoencoder
A deep autoencoder model as baseline for other autoencoder based dimensionality reduction methods.
The default parameters are based on this paper of Geoffrey Hinton:

> G E Hinton and R R Salakhutdinov. Reducing the dimensionality of data with neural networks. *Science*, 313(5786):504–507, July 2006.

### DEC

Deep Embedded Clustering model based on this paper:

> Junyuan Xie, Ross B. Girshick, and Ali Farhadi. Unsupervised deep embedding for clustering analysis. *CoRR*, abs/1511.06335, 2015.

### DeepCluster
DeepCluster model based on this paper:

> Kai Tian, Shuigeng Zhou, and Jihong Guan. Deepcluster: A general clustering framework based on deep learning. In Michelangelo Ceci, Jaakko Hollmén, Ljupčo Todorovski, Celine Vens, and Sašo Džeroski, editors, *Machine Learning and Knowledge Discovery in Databases*, pages 809–825, Cham, 2017. Springer International Publishing.

### VASC
VASC: variational autoencoder for scRNA-seq datasets based on this paper:

> Dongfang Wang and Jin Gu. Vasc: dimension reduction and visualization of single cell rna sequencing data by deep variational autoencoder. *bioRxiv*, 2017.