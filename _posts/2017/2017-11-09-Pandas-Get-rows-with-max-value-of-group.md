---
layout: single
title: "Pandas: Get rows with max value of group"
date: 2017-11-09 12:35
last_modified_at: 2017-11-09 12:35
categories: til
tags:
  - pandas
  - til
---

```python
df.groupby('Sp').apply(lambda t: t[t.Count==t.Count.max()])
```

Via [StackOverflow](https://stackoverflow.com/a/15708177/1257318).
