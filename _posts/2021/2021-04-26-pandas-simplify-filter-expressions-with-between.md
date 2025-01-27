---
layout: single
title: "Pandas: Simplify filter expressions with between"
excerpt: Create more readable code
date: 2021-04-26
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - filter
    - pandas
    - til
redirect_from:
    - /til/pandas-simplify-filter-expressions-with-between/
---

You can reduce this filter:

```python
df[(df.price >= 2) & (df.price <= 4)]
```

to:

```python
df[df.price.between(2, 4)]
```
