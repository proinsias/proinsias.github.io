---
layout: single
title: "Pandas: Simplify filter expressions with between"
date: 2021-04-26 19:41
modified: 2021-04-26 19:41
categories: til
tags:
  - filter
  - pandas
  - til
---

You can reduce this filter:

```python
df[(df.price >= 2) & (df.price <= 4)]
```

to:

```python
df[df.price.between(2, 4)]
```
