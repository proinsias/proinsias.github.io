---
layout: single
title: "Pandas: Make a Data Frame with random floats"
date: 2020-09-18
last_modified_at: 2025-05-13 00:33:19
excerpt: The aptly-named makeDataFrame function
categories:
    - til
tags:
    - pandas
    - random
    - til
---

`pandas` has a built-in function `makeDataFrame()` to return a
DataFrame containing random floats. Note that this is using the
private API, and the exact details has been changing over time. For
`pandas` version 1.1.2, the following should work:

```python
>>> import pandas as pd
>>> pd._testing._K = 5  # Number of columns.
>>> pd._testing._N = 10  # Number of rows.
>>> pd._testing.makeDataFrame()
                   A         B         C         D         E
Hmtini8OOO -0.568102 -0.997378 -0.353896  1.226457  0.534372
P1SLNai7if -0.364987  0.147441 -1.306832 -1.908136 -1.334303
5a28TajzXt  0.232304 -0.998671  0.301885 -0.267748 -1.230216
KMinehwLM4  0.428396  1.126800 -0.266579  1.783406  0.937720
MryVLQA7Vx -0.360119 -0.560188 -1.849716 -0.243453 -2.211198
kJLlRnHMI3 -0.764097 -0.963862 -1.307640  0.351867 -0.762677
F8r1nfJP1M -0.755003 -1.046654 -0.424228 -0.131212  0.054234
Uko85A1zDo  0.282604 -0.471976 -1.285478  0.473940  1.007065
xYNrLSmscQ -1.008650  1.424611 -0.771431  0.757091  1.848688
l3VgecultF  1.488314  0.096245 -0.673878 -0.942140 -0.755458
```
