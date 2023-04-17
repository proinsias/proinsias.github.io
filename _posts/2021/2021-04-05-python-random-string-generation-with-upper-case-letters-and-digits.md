---
layout: single
title: 'Python: Random string generation with digits and upper-case letters'
excerpt: Using random.SystemRandom
date: 2021-04-05
last_modified_at: 2022-11-04
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

Via [SO](https://web.archive.org/web/20220818191046/https://stackoverflow.com/questions/2257441/random-string-generation-with-upper-case-letters-and-digits/2257449).
