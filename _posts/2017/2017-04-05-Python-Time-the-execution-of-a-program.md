---
layout: single
title: "Python: Time the execution of a program"
excerpt: Using the time module
date: 2017-04-05 05:23
last_modified_at: 2026-08-16 02:17:31
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

Via
[Stack Overflow](https://stackoverflow.com/questions/1557571/how-do-i-get-time-of-a-python-programs-execution/1557584).
