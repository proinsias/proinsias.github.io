---
layout: single
title: 'Jupyter: Share variables'
date: 2017-11-14 15:51
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
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
