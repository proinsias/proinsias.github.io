---
layout: single
title: "(TIL) Python: Specify requirements depending on python version using environment markers"
date: 2017-04-05 05:23
modified: 2017-04-05 05:34
categories: til
tags:
  - python
  - til
---

You can use the [environment markers](https://www.python.org/dev/peps/pep-0496/)
to achieve this in `requirements.txt` since `pip` 6.0:

```python
SomeProject==5.4; python_version < '2.7'
SomeProject; sys.platform == 'win32'
```

See also [requirement specifiers](https://pip.readthedocs.io/en/stable/reference/pip_install/#requirement-specifiers)
.

Via [StackOverflow.com](http://stackoverflow.com/a/33451105/1257318).
