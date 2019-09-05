---
layout: single
title: "(TIL) Jupyter: High-res plots"
date: 2017-10-12 15:42
modified: 2017-10-12 15:42
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

Via [Martina Pugliese](https://martinapugliese.github.io/jupyter-customise/).
