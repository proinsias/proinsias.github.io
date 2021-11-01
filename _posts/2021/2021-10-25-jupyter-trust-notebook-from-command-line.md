---
layout: single
title: "Jupyter: Trust notebook from command line"
date: 2021-10-25 13:46
modified: 2021-10-25 13:46
categories: til
tags:
  - jupyter
  - python
  - til
---

Jupyter uses a security model where you have to 'trust' a notebook before Jupyter will perform certain operations. While you can manually trust each notebook via the Jupyter UI, you can also do so in batch from the command line:

```shell
jupyter trust *.ipynb
```

Via [towardsai.net](https://pub.towardsai.net/7-awesome-jupyter-utilities-that-you-should-be-aware-of-f3afdb75c2b).
