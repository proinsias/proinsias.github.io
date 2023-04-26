---
layout: single
title: 'Python: Time the execution of a program'
excerpt: Using the time module
date: 2017-04-05 05:23
last_modified_at: 2023-04-26 13:41:33
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

Via [Stack Overflow](http://stackoverflow.com/a/1557584/1257318).
