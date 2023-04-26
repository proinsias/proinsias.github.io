---
layout: single
title: 'Python: Optimize logging of expensive debugging operations'
excerpt: Only log if threshold is set appropriately
date: 2021-04-26
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - logging
    - python
    - til
---

> Formatting of message arguments is deferred until it cannot be avoided.
> However, computing the arguments passed to the `logging` method can also be expensive,
> and you may want to avoid doing it if the `logger` will just throw away your event.
> To decide what to do, you can call the `isEnabledFor()` method which takes a level argument
> and returns `True` if the event would be created by the `Logger` for that level of call.
> You can write code like this:

```python
if logger.isEnabledFor(logging.DEBUG):
    logger.debug("Message with %s, %s", expensive_func1(), expensive_func2())
```

> so that if the `logger`'s threshold is set above `DEBUG`,
> the calls to `expensive_func1()` and `expensive_func2()` are never made.

Via [docs.python.org](https://docs.python.org/3/howto/logging.html#optimization).
