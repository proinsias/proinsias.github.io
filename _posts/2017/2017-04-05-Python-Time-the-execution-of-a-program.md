---
layout: single
title: "Python: Time the execution of a program"
excerpt: Using the time module
date: 2017-04-05 05:23
last_modified_at: 2026-08-03 14:16:51
categories:
    - til
tags:
    - python
    - til
---

```python
import time
start_time = time.time()
main()
print("--- %s seconds ---" % (time.time() - start_time))
```

Via [Stack Overflow](https://stackoverflow.com/a/1557584/1257318).
