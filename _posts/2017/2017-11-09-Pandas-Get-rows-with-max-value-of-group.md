---
layout: single
title: 'Pandas: Get rows with max value of group'
excerpt: Via the apply function
date: 2017-11-09 12:35
last_modified_at: 2023-04-27 13:36:44
categories:
    - til
tags:
    - pandas
    - til
---

```python
df.groupby('Sp').apply(lambda t: t[t.Count==t.Count.max()])
```

Via [StackOverflow](https://stackoverflow.com/a/15708177/1257318).
