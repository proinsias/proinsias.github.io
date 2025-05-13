---
layout: single
title: "Pandas: Named Aggregation"
date: 2020-01-24
last_modified_at: 2025-05-13 00:33:19
excerpt: Simplify your groupbys
categories:
    - til
tags:
    - pandas
    - til
---

`pandas>=0.25` supports named aggregation,
allowing you to specify the output column names when you aggregate a groupby,
instead of renaming.
This will be especially useful for doing multiple aggregations on the same column.
Here's a simple example from the
[Docs](https://pandas.pydata.org/pandas-docs/stable/user_guide/groupby.html#aggregation):

```python
In [80]: animals
Out[80]:
  kind  height  weight
0  cat     9.1     7.9
1  dog     6.0     7.5
2  cat     9.5     9.9
3  dog    34.0   198.0

In [81]: animals.groupby("kind").agg(
   ....:     min_height=pd.NamedAgg(column='height', aggfunc='min'),
   ....:     max_height=pd.NamedAgg(column='height', aggfunc='max'),
   ....:     average_weight=pd.NamedAgg(column='weight', aggfunc=np.mean),
   ....: )
   ....:
Out[81]:
      min_height  max_height  average_weight
kind
cat          9.1         9.5            8.90
dog          6.0        34.0          102.75
```

Note that `pandas.NamedAgg` is just a namedtuple.
Plain tuples are allowed as well:

```python
animals.groupby("kind").agg(
    min_height=('height', 'min'),
    max_height=('height', 'max'),
    average_weight=('weight', np.mean),
)
```

If your desired output column names are not valid python keywords,
construct a dictionary and unpack the keyword arguments:

```python
animals.groupby("kind").agg(**{
    'total weight': pd.NamedAgg(column='weight', aggfunc=sum),
})
```

Additional keyword arguments are not passed through to the aggregation functions.
Only pairs of `(column, aggfunc)` should be passed as `**kwargs`.
If your aggregation functions requires additional arguments, partially apply them with `functools.partial()`.

Named aggregation is also valid for `Series` `groupby` aggregations.
In this case there's no column selection, so the values are just the functions:

```python
animals.groupby("kind").height.agg(
    min_height='min',
    max_height='max',
)
```

Via [Adam Merberg](https://twitter.com/AdamMerberg).
