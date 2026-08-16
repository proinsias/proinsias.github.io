---
layout: single
title: "Python: Invert a mapping"
date: 2017-04-05
last_modified_at: 2026-08-16 02:17:31
excerpt: Using items()
categories:
    - til
tags:
    - python
    - til
---

Given this dictionary:

```python
my_map = { 'a': 1, 'b':2 }
```

you can invert it:

```python
inv_map = {v: k for k, v in my_map.items()}
```

to get:

```python
$ inv_map
{ 1: 'a', 2: 'b' }
```

Via
[StackOverflow.com](https://stackoverflow.com/questions/483666/reverse-invert-a-dictionary-mapping).
