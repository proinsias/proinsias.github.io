---
layout: single
title: "Python: Best way to implement a simple queue"
excerpt: Implement queues using the collections.deque module
date: 2023-05-02 20:30
last_modified_at: 2023-05-03 00:55:43
categories:
    - til
tags:
    - python
    - til
---

> A simple list can easily be used to implement a queue abstract data structure.
> A queue implies the first-in, first-out principle.

> However, this approach will prove inefficient because inserts and pops
> from the beginning of a list are slow (all elements need shifting by one).

> It's recommended to implement queues using the `collections.deque` module
> as it was designed with fast appends and pops from both ends.

```python
from collections import deque
queue = deque(["a", "b", "c"])
queue.append("d")
queue.append("e")
queue.popleft()
queue.popleft()
print(queue)
# output is: deque(['c', 'd', 'e'])
```

> A reverse queue can be implemented by opting for `appendleft` instead of `append` and `pop` instead of `popleft`.

Via [enki.com](https://app.enkipro.com/public/insight/56c358ac0b57870600f4123b).
