---
layout: single
title: "(TIL) Python: Thousands Separator in Formatted Strings"
date:
modified:
---

It's very easy to add thousands separators to numbers:

```python
>>> big_num = 1234567890.123

>>> print(f'{big_num:,}')
1,234,567,890.123
```
