---
layout: single
title: "(TIL) Pandas: Complex aggregation expressions"
date: 2017-11-09 12:35
modified: 2017-11-09 12:35
---

```python
>>> df = pd.DataFrame(np.random.randn(10,3),columns=list('ABC'))

>>> df['D'] = [1, 1, 1, 2, 2, 2, 3, 3, 3, 3, ]

# Define the aggregation calculations
>>> aggregations = {
    # Work on the "A" column.
    'A': {
        'total_A': 'sum',  # get the sum, and call this result 'total_A'
        'average_A': 'mean', # get mean, call result 'average_A'
        'num_A': 'count'
        },
    # Work on the "B" column.
    'B': {
        'max_B': 'max',   # Find the max, call the result "max_B"
        'min_B': 'min',
        'range_B': lambda x: max(x) - min(x)
        },
    # Calculate two results for the 'C' column with a list of aggregation functions.
    'C': ["count", "max"]
    }

# Perform groupby aggregation by column "D".
>>> df.groupby('D').agg(aggregations)
          B                         C                   A
      min_B     max_B   range_B count       max average_A   total_A num_A
D
1 -0.986305  1.478065  2.464370     3 -0.158469 -0.516790 -1.550369     3
2  0.390151  1.661266  1.271115     3  1.150179 -0.765209 -2.295627     3
3 -0.658708  1.769680  2.428388     4  0.875891  0.007827  0.031307     4

```

Via
[shanelynn.ie](http://www.shanelynn.ie/summarising-aggregation-and-grouping-data-in-python-pandas/)
.
