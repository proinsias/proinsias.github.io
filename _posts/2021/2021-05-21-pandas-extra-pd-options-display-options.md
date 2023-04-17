---
layout: single
title: 'Pandas: Extra pd.options.display options'
excerpt: More control over display of your pandas objects
date: 2021-05-21
last_modified_at: 2022-11-02
categories: til
tags:
    - pandas
    - til
---

I've come across several `pandas` display options before, such as:

```python
import pandas as pd

pd.options.display.max_columns = 50
pd.options.display.max_rows = 100
pd.options.display.max_colwidth = 80
```

but here are some ones that are new to me:

```python
# Adjust the number of columns profiled and displayed by the `info()` method.
pd.options.display.max_info_columns = 150
# Adjust the number of decimals to be displayed in a DataFrame.
pd.options.display.precision = 15
# Adjust the display format in a DataFrame.
pd.options.display.float_format = '{:.2f}%'.format
# Prints and parses dates with the year first.
pd.options.display.date_yearfirst = True
```

Via [towards data science](https://towardsdatascience.com/6-pandas-display-options-you-should-memories-84adf8887bc3)
and [pandas.pydata.org](https://pandas.pydata.org/pandas-docs/stable/user_guide/options.html#available-options).
