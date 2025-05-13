---
layout: single
title: "Pandas: Inverse of boolean"
excerpt: Using the tilde operator
date: 2017-11-09 12:35
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - pandas
    - til
---

In `pandas`, you can use the tilde (`~`) to flip `bool` values:

```python
>>> df = pd.DataFrame({"A": ["Hello", "this", "World", "apple"]})
>>> df[df.A.str.contains("Hello|World")]
       A
0   Hello
2   World
>>> df[~df.A.str.contains("Hello|World")]
       A
1   this
3  apple
```

Via [Stack Overflow](http://stackoverflow.com/a/21055176/1257318).
