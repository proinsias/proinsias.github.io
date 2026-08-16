---
layout: single
title: "Pandas: Get rows with max value of group"
excerpt: Via the apply function
date: 2017-11-09 12:35
last_modified_at: 2026-08-16 02:17:31
categories:
    - til
tags:
    - pandas
    - til
---

```python
df.groupby('Sp').apply(lambda t: t[t.Count==t.Count.max()])
```

Via
[StackOverflow](https://stackoverflow.com/questions/15707746/how-can-i-get-rows-which-have-the-max-value-of-the-group-to-which-they-belong/15708177).
