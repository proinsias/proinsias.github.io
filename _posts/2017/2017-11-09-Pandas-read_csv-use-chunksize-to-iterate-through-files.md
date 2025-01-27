---
layout: single
title: "Pandas: Use chunksize to iterate through files with read_csv"
excerpt: Handle files too large for memory
date: 2017-11-09 12:35
last_modified_at: 2023-04-28 12:52:18
categories:
    - til
tags:
    - pandas
    - til
---

Suppose you wish to iterate through a (potentially very large) file lazily rather than
reading the entire file into memory.

By specifying a `chunksize` to `read_csv` or `read_table`, the return value will be an
`iterable` object of type `TextFileReader`:

```python
In [163]: reader = pd.read_table('tmp.sv', sep='|', chunksize=4)

In [164]: reader
Out[164]: <pandas.io.parsers.TextFileReader at 0x7ff27e15a450>

In [165]: for chunk in reader:
   .....:     print(chunk)
   .....:
Out[165]:
   Unnamed: 0         0         1         2         3
0           0  0.469112 -0.282863 -1.509059 -1.135632
1           1  1.212112 -0.173215  0.119209 -1.044236
2           2 -0.861849 -2.104569 -0.494929  1.071804
3           3  0.721555 -0.706771 -1.039575  0.271860
   Unnamed: 0         0         1         2         3
4           4 -0.424972  0.567020  0.276232 -1.087401
5           5 -0.673690  0.113648 -1.478427  0.524988
6           6  0.404705  0.577046 -1.715002 -1.039268
7           7 -0.370647 -1.157892 -1.344312  0.844885
   Unnamed: 0         0        1         2         3
8           8  1.075770 -0.10905  1.643563 -1.469388
9           9  0.357021 -0.67460 -1.776904 -0.968914
```

Via
[pandas-docs](http://pandas.pydata.org/pandas-docs/stable/io.html#iterating-through-files-chunk-by-chunk)
.
