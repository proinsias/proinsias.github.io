---
layout: single
title: "(TIL) Pandas: DateOffset as a Frequency Increment"
date:
modified:
---

`pandas`' `DateOffset` represents a regular frequency increment:

```python
> from datetime import datetime
> from pandas.tseries.offsets import *
> d = datetime(2008, 8, 18, 9, 0)
> d + DateOffset(months=4, days=5)
Timestamp('2008-12-23 09:00:00')
```

Via [SO](https://stackoverflow.com/a/31170136/1257318).
