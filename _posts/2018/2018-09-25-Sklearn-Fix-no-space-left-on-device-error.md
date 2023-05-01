---
layout: single
title: 'Sklearn: Fix No Space Left on Device Error'
excerpt: Via the JOBLIB_TEMP_FOLDER environment variable
date: 2018-09-25 10:14
last_modified_at: 2023-05-01 13:43:06
categories:
    - til
tags:
    - sklearn
    - til
---

While fitting a sklearn model, I encountered the following error:

```python
IOError: No space left on device
```

Apparently when you set `n_jobs > 1` and therefore use shared memory,
you can run out of shared memory.
The workaround is to set the following environment variable:

```python
%env JOBLIB_TEMP_FOLDER=/tmp
```

Via [SO](https://stackoverflow.com/a/49154587/1257318).
