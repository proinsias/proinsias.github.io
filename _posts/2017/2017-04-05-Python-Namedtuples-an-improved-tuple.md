---
layout: single
title: "Python: An improved tuple"
excerpt: The namedtuple
date: 2017-04-05 05:23
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - python
    - til
---

A downside of plain `tuple`s is that the data you store in them can only be pulled out by
accessing it through integer indexes.
You can't give names to individual properties stored in a `tuple`.
This can impact code readability.

Also, a `tuple` is always an ad-hoc structure.
It's hard to ensure that two `tuple`s have the same number of fields and the same
properties stored on them.
This makes it easy to introduce "slip-of-the-mind" bugs by mixing up the field order.

`namedtuple`s aim to solve these two problems.

`namedtuple`s are immutable just like regular `tuple`s.
Once you store something in them you can't modify it.

Each object stored in a `namedtuple` can be accessed through a unique (human-readable)
identifier.
This frees you from having to remember integer indexes,
or resorting to workarounds like defining integer constants as mnemonics for your indexes.
You can still access the values by their index.
That way `namedtuple`s can be used as a drop-in replacement for regular `tuple`s.

How to create a `namedtuple`:

```python
from collections import namedtuple

Car = namedtuple("Car", "color mileage")
```

You can also pass a list with string field names.
The advantage of using a proper list is that it's easier to reformat this code if you need
to split it across multiple lines:

```python
Car = namedtuple('Car', [
...     'color',
...     'mileage',
... ])
```

You'll even get a nice string representation for free,
which saves some typing and redundancy.

When it comes to memory usage `namedtuple`s are also "better" than regular classes
and just as memory efficient as regular `tuple`s.

The `namedtuple`'s `._fields` property gives you a list of the constituent field names.

The `_asdict()` helper returns the contents of a `namedtuple` as a dictionary.
This is great for avoiding typos when generating JSON-output, for example.

The `_replace()` function creates a (shallow) copy of a `namedtuple`
and allows you to selectively replace some of its fields.

The `_make()` class method can be used to create new instances of a `namedtuple` from a
sequence or iterable.

From [dbader.org](https://dbader.org/blog/writing-clean-python-with-namedtuples).
