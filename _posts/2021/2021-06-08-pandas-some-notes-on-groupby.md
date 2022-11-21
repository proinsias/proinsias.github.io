---
layout: single
title: 'Pandas: Some notes on groupby'
excerpt: Groupby expert level
date: 2021-06-08
modified: 2022-11-02
categories: til
tags:
    - pandas
    - til
---

1. The `count()` aggregation function counts only non-null values.
   To count all values, whether null or non-null, use `size`.

2. You can specify the names of aggregated columns as the arguments to the `agg` function.
   Here I use a dictionary so that I can use string constants for colum names.

    ```python
    # Series level
    df.groupby("class")["sepal length (cm)"].agg(
        **{
            # 'new column': 'function',
            "sepal_average_length": "mean",
            "sepal_standard_deviation": "std",
        }
    )

    # DataFrame level
    df.groupby(["class"]).agg(
        **{
            # 'new column': ('column', 'function'),
            "sepal_average_length": ("sepal length (cm)", "mean"),
            "sepal_standard_deviation": ("sepal length (cm)", "std"),
        }
    )
    ```

Via [Christopher Tao](https://towardsdatascience.com/4-pandas-groupby-tricks-you-should-know-9e5b9870693e)
and [Soner Yıldırım](https://towardsdatascience.com/3-python-pandas-tricks-for-efficient-data-analysis-6324d013ef39).
