---
layout: single
title: "(TIL) Pandas: Get Memory usage of DataFrame with info"
date:
modified:
---

The memory usage of a DataFrame (including the index) is shown when accessing the `info`
method of a DataFrame. A configuration option, `display.memory_usage`, specifies if the
DataFrame’s memory usage will be displayed when invoking the `df.info()` method.

```python
>>> df = pd.DataFrame(np.random.randn(10,3),columns=list('ABC'))
>>> df.info()
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 10 entries, 0 to 9
Data columns (total 3 columns):
A    10 non-null float64
B    10 non-null float64
C    10 non-null float64
dtypes: float64(3)
memory usage: 320.0 bytes
```

Via
[pydata.org](http://pandas.pydata.org/pandas-docs/stable/faq.html#dataframe-memory-usage)
.
