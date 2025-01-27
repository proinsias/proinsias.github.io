---
layout: single
title: "Jupyter: Set environment variables"
excerpt: Via the env magic command
date: 2017-11-14 15:51
last_modified_at: 2023-05-01 17:51:14
categories:
    - til
tags:
    - jupyter
    - til
---

You can set environment variables directly from the notebook without having to restart the kernel:

```python
%env NEW_ENV_VAR=1
```

Via [Martina Pugliese](https://web.archive.org/web/20200915133315/https://martinapugliese.github.io/tech/jupyter-customise/).
