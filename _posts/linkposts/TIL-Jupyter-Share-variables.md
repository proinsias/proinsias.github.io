---
layout: single
title: "(TIL) Jupyter: Share variables"
date:
modified:
---

To pass variables between notebooks, first store the variable using:

```python
%store var
```

and then restore it using:

```python
%store -r data
```

Via [Martina Pugliese](https://martinapugliese.github.io/jupyter-customise/).

To automatically restore stored variables at startup, add this to your `ipython_config.py` file:

```python
c.StoreMagics.autorestore = True
```
