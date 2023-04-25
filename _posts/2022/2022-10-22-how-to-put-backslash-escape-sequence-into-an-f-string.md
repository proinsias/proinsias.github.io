---
last_modified_at: 2023-04-25 01:22:52
date: 2022-10-22
layout: single
published: true
title: How to put backslash escape sequence into an f-string
excerpt: Putting a backslash escape sequence into an f-string
categories: til
tags:
    - python
    - til
redirect_from:
    - /pages/proinsias/til/how-to-put-backslash-escape-sequence-into-an-f-string
---

If you want to write something like:

```python
"{}MESSAGE{}".format("\t"*15, "\t"*15)
```

but using f-strings, you hit the issue that you cannot have a backslash inside an f-string expression.

Instead you should assign the tab character to a variable and then use that:

```python
tab = '\t' * 15
f"{tab}MESSAGE{tab}"
```

Via [SO](https://stackoverflow.com/q/66173070/1257318).
