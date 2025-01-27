---
layout: single
title: "Pandas: DateOffset as a Frequency Increment"
excerpt: How to apply pandas.tseries.offsets.DateOffset
date: 2017-11-09 12:35
last_modified_at: 2023-04-27 13:36:44
categories:
    - til
tags:
    - pandas
    - til
---

`pandas`' `DateOffset` represents a regular frequency increment:

```python
> from datetime import datetime
> from pandas.tseries.offsets import DateOffset
> d = datetime(2008, 8, 18, 9, 0)
> d + DateOffset(months=4, days=5)
Timestamp('2008-12-23 09:00:00')
```

Via [SO](https://stackoverflow.com/a/31170136/1257318).
