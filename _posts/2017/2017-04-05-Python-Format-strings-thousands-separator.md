---
layout: single
title: "Python: Thousands Separator in Formatted Strings"
date: 2017-04-05 05:23
modified: 2017-04-05 05:34
categories: til
tags:
  - python
  - til
---

It's very easy to add thousands separators to numbers:

```python
>>> big_num = 1234567890.123

>>> print(f'{big_num:,}')
1,234,567,890.123
```
