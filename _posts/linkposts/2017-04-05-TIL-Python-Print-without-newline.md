---
layout: single
title: "(TIL) Python: Print without newline"
date: 2017-04-05
modified: 2017-04-05
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
