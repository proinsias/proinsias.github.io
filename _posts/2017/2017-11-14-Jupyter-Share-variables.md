---
layout: single
title: "Jupyter: Share variables"
date: 2017-11-14 15:51
modified: 2017-11-14 15:51
categories: til
tags:
  - jupyter
  - til
---

To pass variables between notebooks, first store the variable using:

```python
%store var
```

and then restore it using:

```python
%store -r data
```

Via [Martina Pugliese](https://web.archive.org/web/20200915133315/https://martinapugliese.github.io/tech/jupyter-customise/).

To automatically restore stored variables at startup, add this to your `ipython_config.py` file:

```python
c.StoreMagics.autorestore = True
```
