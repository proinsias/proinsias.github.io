---
last_modified_at: 2026-07-30 16:52:22
date: 2022-10-22
layout: single
published: true
title: How to put backslash escape sequence into an f-string
excerpt: Putting a backslash escape sequence into an f-string
categories:
    - til
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

but using f-strings, you hit the issue that you cannot have a backslash inside
an f-string expression.

Instead you should assign the tab character to a variable and then use that:

```python
tab = '\t' * 15
f"{tab}MESSAGE{tab}"
```

**Update:** [PEP 701](https://peps.python.org/pep-0701/), implemented in Python
3.12 (October 2023), removes this restriction entirely — backslashes (and even
same-type nested quotes) are now legal directly inside f-string expression
braces. On Python 3.12+ you can write `f"{'\t' * 15}MESSAGE{'\t' * 15}"`
directly. The workaround above is still needed if you're on Python 3.11 or
earlier.

Via [SO](https://stackoverflow.com/q/66173070/1257318).
