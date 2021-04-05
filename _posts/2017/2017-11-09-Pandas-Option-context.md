---
layout: single
title: "Pandas: Option Context"
date: 2017-11-09 12:35
modified: 2017-11-09 12:35
categories: til
tags:
  - pandas
  - til
---

If you want to temporarily change pandas options,
instead of doing so manually as follows:

```python
max_columns = pd.get_option('display.max_columns')
max_rows = pd.get_option('display.max_rows')

pd.set_option('display.max_columns', None)
pd.set_option('display.max_rows', None)
print(df)

pd.set_option('display.max_columns', max_columns)
pd.set_option('display.max_rows', max_rows)
```

you can use the `option_context` function to do so via a context:

```python
with pd.option_context('display.max_rows', None, 'display.max_columns', None, ):
    print(df)
```

This will automatically return the options to their default values after printing the dataframe.

Via [SO](https://stackoverflow.com/a/30691921/1257318).
