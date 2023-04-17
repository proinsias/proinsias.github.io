---
layout: single
title: 'Pandas: Simplify filter expressions with between'
excerpt: Create more readable code
date: 2021-04-26
last_modified_at: 2022-11-02
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
