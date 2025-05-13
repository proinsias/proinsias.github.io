---
layout: single
title: "Python: Nested Comprehensions"
date: 2017-04-05
last_modified_at: 2025-05-13 00:33:19
excerpt: Using two fors within a comprehension
categories:
    - til
tags:
    - python
    - til
---

You probably know how to rewrite a for loop such as:

```python
lst = []
for j in s1:
    lst.append(j)
```

as a comprehension:

```python
lst = [j for j in s1]
```

But what about the following nested for loop?:

```python
lst = []
for j in s1:
  for k in s2:
    lst.append((j, k))
```

Here you go:

```python
lst = [(j, k) for j in s1 for k in s2]
```

Via [StackOverflow](http://stackoverflow.com/a/3633145/1257318).
