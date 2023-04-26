---
layout: single
title: 'Jupyter: Trust notebook from command line'
excerpt: Speed up your usage of notebooks
date: 2021-10-25
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - jupyter
    - python
    - til
---

Jupyter uses a security model where you have to 'trust' a notebook before Jupyter will perform certain operations.
While you can manually trust each notebook via the Jupyter UI, you can also do so in batch from the command line:

```shell
jupyter trust *.ipynb
```

Via [towardsai.net](https://pub.towardsai.net/7-awesome-jupyter-utilities-that-you-should-be-aware-of-f3afdb75c2b).
