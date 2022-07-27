---
layout: single
title: "Matplotlib: Determine which backend is in use"
date: 2022-07-27 16:27
modified: 2022-07-27 16:27
categories: til
tags:
  - matplotlib
  - til
---

To figure out which `matplotlib` backend is in use, use either:

```python
import matplotlib
matplotlib.get_backend()
```

or:

```python
import matplotlib
matplotlib.rcParams['backend']
```

Via [SO](https://stackoverflow.com/questions/3580027/how-do-you-determine-which-backend-is-being-used-by-matplotlib).
