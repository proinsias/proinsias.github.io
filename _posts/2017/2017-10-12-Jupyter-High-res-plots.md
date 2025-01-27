---
layout: single
title: "Jupyter: High-res plots"
excerpt: Via the InlineBackend.figure_format configuration option
date: 2017-10-12 15:42
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - jupyter
    - til
---

You can enable high-resolution plots in jupyter notebook using the following
configuration:

```python
%config InlineBackend.figure_format = 'retina'
```

or add the following to your `jupyter_notebook_config.py`:

```python
c.InlineBackend.figure_format = 'retina'
```

Via [Martina Pugliese](https://web.archive.org/web/20200915133315/https://martinapugliese.github.io/tech/jupyter-customise/).
