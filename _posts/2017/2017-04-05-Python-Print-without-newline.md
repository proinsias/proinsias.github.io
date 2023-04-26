---
layout: single
title: 'Python: Print without newline'
date: 2017-04-05 05:23
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - python
    - til
---

To print a string without appending the usual newline, use the `end` parameter of the
`print` function:

```python
print('This is a string...', end='')
```

If you are having trouble with buffering, you can flush the output by adding `flush=True`:

```python
print('This is a string...', end='', flush=True)
```

Via [StackOverflow.com](https://stackoverflow.com/a/493399/1257318).
