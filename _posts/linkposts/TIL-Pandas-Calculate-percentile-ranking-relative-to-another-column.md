---
layout: single
title: "(TIL) Pandas: Calculate percentile ranking relative to another column"
date:
modified:
---

Say we have two columns of data representing the same quantity;
one column is from training data, the other is from validation data.
How can we efficiently get a similar set of percentile rankings of the validation data column
relative to the training data column?

The key to this is to sort the training data, and use
[`searchsorted`](https://pandas.pydata.org/pandas-docs/version/0.18.1/generated/pandas.Series.searchsorted.html)
.

```python
>>> import pandas as pd
>>> import numpy as np

>>> # Generate Dummy Data
>>> df_train = pd.DataFrame({'Values': 1000 * np.random.rand(15712)})

>>> # Sort Data
>>> df_train = df_train.sort_values('Values')

>>> # Calculating Rank and Rank_Pct for demo purposes
>>> # but note that it is not needed for the solution.
>>> # The ranking of the validation data below does not depend on this.
>>> df_train['Rank'] = df_train.rank()
>>> df_train['Rank_Pct']= df_train.Values.rank(pct=True)

>>> # Demonstrate how Rank Percentile is calculated
>>> # This gives the same value as `.rank(pct=True)`
>>> pct_increment = 1./len(df_train)
>>> df_train['Rank_Pct_Manual'] = df_train.Rank*pct_increment

>>> df_train.head()

    Values    Rank    Rank_Pct    Rank_Pct_Manual
2623    0.009844    1.0    0.000064    0.000064
11981    0.088291    2.0    0.000127    0.000127
10295    0.133984    3.0    0.000191    0.000191
4864    0.141846    4.0    0.000255    0.000255
13350    0.157142    5.0    0.000318    0.000318

>>> # Generate Dummy Validation Data
>>> df_validation = pd.DataFrame({'Values': 1000*np.random.rand(1000)})

>>> # Note searchsorted returns array index.
>>> # In sorted list rank is the same as the array index + 1
>>> # First attempt:
>>> df_validation['Rank_Pct'] = (1 + df_train.Values.searchsorted(df_validation.Values))*pct_increment
>>> # A small improvement to the nice solution above is to average the positions
>>> # found by searching from the left and searching from the right:
>>> # This change is important in cases where a value occurs multiple times.
>>> # Averaging the two gives the same percentile ranking as the pandas .rank(pct=True) routine.
>>> df_validation['Rank_Pct'] = (0.5 + 0.5*df_train.Values.searchsorted(df_validation.Values,
    side='left') + 0.5*df_train.Values.searchsorted(df_validation.Values, side='right'))*pct_increment

>>> print df_validation.head()

    Values    Rank_Pct
0    200.907085    0.200261
1    676.185868    0.674548
2    990.648139    0.990421
3    969.873645    0.969100
4    999.709496    0.999841
```

Via [SO](https://stackoverflow.com/a/43147486/1257318).
