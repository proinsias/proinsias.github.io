---
layout: single
title: "Python: Generate random but reproducible UUID with seed"
excerpt: Using the random module
date: 2017-04-05 05:23
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - python
    - til
---

I often generate UUIDs (
[Universally Unique Identifiers](https://en.wikipedia.org/wiki/Universally_unique_identifier)
), but when I use these in testing, I want to do so reproducibly.
Turns out you can do this using a seed from the `random` module:

```python
import uuid
import random

seed = 0

rd = random.Random()
rd.seed(seed)

reproducible_seed = uuid.UUID(int=rd.getrandbits(128))
```

Now `reproducible_seed` should be the same for each run of this script.

Via [StackOverflow](http://stackoverflow.com/q/41186818/1257318).
