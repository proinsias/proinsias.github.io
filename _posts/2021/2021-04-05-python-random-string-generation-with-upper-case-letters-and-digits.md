---
layout: single
title: "Python: Random string generation with digits and upper-case letters"
date: 2021-04-05 15:42
modified: 2021-04-05 15:42
categories: til
tags:
  - python
  - random
  - til
---

Here's a nice one liner for generating a random string using just digits and upper-case letters:

```python
''.join(random.SystemRandom().choice(string.ascii_uppercase + string.digits) for _ in range(N))
```

The use of `random.SystemRandom` is to make the randomness more cryptographically secure.

Via [SO](https://stackoverflow.com/a/2257449/1257318).
