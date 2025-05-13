---
layout: single
title: "Matplotlib: Determine which backend is in use"
date: 2022-07-27
last_modified_at: 2025-05-13 00:33:19
excerpt: Quick one-liner to identify the backend
categories:
    - til
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

Via [SO](https://web.archive.org/web/20220228120340/https://stackoverflow.com/questions/3580027/how-do-you-determine-which-backend-is-being-used-by-matplotlib).
