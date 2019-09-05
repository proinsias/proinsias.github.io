---
layout: single
title: "(TIL) Pandas: Inverse of boolean"
date:
modified:
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

Via [StackOverflow](http://stackoverflow.com/a/21055176/1257318).
