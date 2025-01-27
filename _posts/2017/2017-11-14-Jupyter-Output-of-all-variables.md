---
layout: single
title: "Jupyter: Get the output of all variables"
excerpt: Via the InteractiveShell.ast_node_interactivity configuration variable
date: 2017-11-14 15:51
last_modified_at: 2023-04-28 12:52:18
categories:
    - til
tags:
    - jupyter
    - til
---

> If you try to see the output of more variables without explicitly writing `print` in
> front of each, only the last one gets outputted. With this, you get them all:

```python
from IPython.core.interactiveshell import InteractiveShell

InteractiveShell.ast_node_interactivity = "all"
```

> If you want to set this behavior for all instances of Jupyter, simply create a file
> `~/.ipython/profile_default/ipython_config.py` with the lines below.

```python
c = get_config()

# Run all nodes interactively
c.InteractiveShell.ast_node_interactivity = "all"
```

Via [Martina Pugliese](https://web.archive.org/web/20200915133315/https://martinapugliese.github.io/tech/jupyter-customise/)
and [dataquest.io](https://www.dataquest.io/blog/jupyter-notebook-tips-tricks-shortcuts/).
