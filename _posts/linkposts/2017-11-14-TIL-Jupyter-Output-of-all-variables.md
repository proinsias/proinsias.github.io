---
layout: single
title: "(TIL) Jupyter: Output of all variables"
date: 2017-11-14 15:51
modified: 2017-11-14 15:51
---

> If you try to see the output of more variables without explicitly writing `print` in
front of each, only the last one gets outputted. With this, you get them all:

```python
from IPython.core.interactiveshell import InteractiveShell
InteractiveShell.ast_node_interactivity = "all"
```

> If you want to set this behaviour for all instances of Jupyter, simply create a file
`~/.ipython/profile_default/ipython_config.py` with the lines below.

```python
c = get_config()

# Run all nodes interactively
c.InteractiveShell.ast_node_interactivity = "all"
```

Via [Martina Pugliese](https://martinapugliese.github.io/jupyter-customise/) and
[dataquest.io](https://www.dataquest.io/blog/jupyter-notebook-tips-tricks-shortcuts/).
