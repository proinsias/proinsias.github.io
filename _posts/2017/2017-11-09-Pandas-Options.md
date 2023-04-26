---
layout: single
title: 'Pandas: Options'
date: 2017-11-09 12:35
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - pandas
    - til
---

{% include video id="yiO43TQ4xvc" provider="youtube" %}

You can use the following functions to interact with the options in `pandas`:

-   [pd.get_option](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.get_option.html)
    retrieves the value of the specified option,
-   [pd.reset_option](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.reset_option.html)
    resets one or more options to their default value, and
-   [pd.set_option](http://pandas.pydata.org/pandas-docs/stable/generated/pandas.set_option.html)
    sets the value of the specified option.

For example:

```python
pd.set_option("display.float_format", "{:,}".format)
pd.set_option("display.height", 1000)
pd.set_option("display.max_columns", 500)
pd.set_option("display.max_colwidth", 1000)
pd.set_option("display.max_rows", 500)
pd.set_option("display.precision", 2)

pd.reset_option("all")  # Reset all options.
pd.describe_option("rows")  # Print description for 'rows' registered option.
pd.describe_option()  # Get a listing for all registered options.
```

Via [How do I change display options in pandas?](https://www.youtube.com/watch?v=yiO43TQ4xvc).
