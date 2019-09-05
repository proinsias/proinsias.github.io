---
layout: single
title: "(TIL) Pandas: Get rows with max value of group"
date:
modified:
---

```python
df.groupby('Sp').apply(lambda t: t[t.Count==t.Count.max()])
```

Via [StackOverflow](https://stackoverflow.com/a/15708177/1257318).
