---
layout: single
title: "Pandas: Make a Data Frame with random floats"
date: 2020-09-18
last_modified_at: 2026-10-08 21:49:40
excerpt: The aptly-named makeDataFrame function
categories:
    - til
tags:
    - pandas
    - random
    - til
---

`pandas` used to have a private `pd._testing.makeDataFrame()` function to return
a DataFrame containing random floats, but this and similar helpers in
`pandas._testing` were removed entirely in later `pandas` 2.x releases. The
public API equivalent is straightforward:

```python
>>> import numpy as np
>>> import pandas as pd
>>> pd.DataFrame(np.random.randn(10, 5), columns=list("ABCDE"))
                   A         B         C         D         E
         O -0.568102 -0.997378 -0.353896  1.226457  0.534372
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
