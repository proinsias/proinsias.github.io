---
layout: single
title: "Sklearn: Pipeline diagram"
date: 2020-09-11 11:00
modified: 2020-09-11 11:00
categories: til
tags:
  - pipeline
  - sklearn
  - til
---

> Estimators can be displayed with a HTML representation when shown in a jupyter notebook.
> This can be useful to diagnose or visualize a `Pipeline` with many estimators.
> This visualization is activated by setting the display option in `sklearn.set_config`:

```python
from sklearn import set_config

set_config(display='diagram')
# displays HTML representation in a jupyter context
model
```

![Model diagram](https://miro.medium.com/max/1100/1*zBHVqeUkMYlwGwh67cKHGw.png)

Via [towards data science](https://towardsdatascience.com/10-things-you-didnt-know-about-scikit-learn-cccc94c50e4f)
and [scikit-learn.org](https://scikit-learn.org/stable/modules/compose.html#visualizing-composite-estimators).
