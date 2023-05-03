---
layout: single
title: 'Pandas: Transforming two DataFrame columns into a dictionary'
excerpt: Using the zip command
date: 2023-05-03 09:44
last_modified_at: 2023-05-03 13:52:31
categories:
    - til
tags:
    - pandas
    - python
    - til
---

```python
import pandas as pd

df = pd.DataFrame(dict(a=["a","b","c"],b=[1,2,3]))

df_dictionary = dict(zip(df["a"],df["b"]))
df_dictionary

# Output is {'a': 1, 'b': 2, 'c': 3}
```

Via [Lucas Soares](https://python.plainenglish.io/15-data-science-snippets-to-optimize-your-coding-pipeline-93a5625d48cd).
