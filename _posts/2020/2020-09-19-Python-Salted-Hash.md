---
layout: single
title: "Python: Salted Hash"
date: 2020-09-19
last_modified_at: 2025-05-13 00:33:19
excerpt: The hashlib module
categories:
    - til
tags:
    - hash
    - salt
    - python
    - til
---

> The salt is just a randomly derived bit of data that you prefix or
> postfix your data with to dramatically increase the complexity of a
> dictionary attack on your hashed value. So given a salt `s` and data `d`
> you'd just do the following to generate a salted hash of the data:

```python
import hashlib

hashlib.sha512(s + d).hexdigest()
```

Via [StackOverflow](https://stackoverflow.com/a/2898780/1257318).
