---
layout: single
title: "(TIL) Jupyter: Set environment variables"
date: 2017-11-14 15:51
modified: 2017-11-14 15:51
categories: til
tags:
  - jupyter
  - til
---

You can set environment variables directly from the notebook without having to restart the kernel:

```python
%env NEW_ENV_VAR=1
```

Via [Martina Pugliese](https://martinapugliese.github.io/jupyter-customise/).
