---
layout: single
title: 'Pandas: Simplify filter expressions with between'
excerpt: Create more readable code
date: 2021-04-26
last_modified_at: 2023-04-25 01:22:52
categories: til
tags:
    - filter
    - pandas
    - til
redirect_from:
    - /til/pandas-simplify-filter-expressions-with-between
---

You can reduce this filter:

```python
df[(df.price >= 2) & (df.price <= 4)]
```

to:

```python
df[df.price.between(2, 4)]
```
