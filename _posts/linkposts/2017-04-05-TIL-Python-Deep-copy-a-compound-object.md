---
layout: single
title: "(TIL) Python: Deep copy a compound object"
date: 2017-04-05
modified: 2017-04-05
---

> Assignment statements in Python do not copy objects, they create bindings between a
target and an object. For collections that are mutable or contain mutable items, a copy is
sometimes needed so one can change one copy without changing the other. [The `copy`]
module provides generic shallow and deep copy operations.
The difference between shallow and deep copying is only relevant for compound objects
(objects that contain other objects, like lists or class instances):

* A shallow copy constructs a new compound object and then (to the extent possible)
  inserts references into it to the objects found in the original.
* A deep copy constructs a new compound object and then, recursively, inserts copies
  into it of the objects found in the original.

``` python
>>> items = [
...     {
...         'id': 1,
...         'name': 'laptop',
...         'value': 1000
...     },
...     {
...         'id': 2,
...         'name': 'chair',
...         'value': 300,
...     },
...     {
...         'id': 3,
...         'name': 'book',
...         'value': 20,
...     },
... ]

>>> items
[{'id': 1, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]
>>> items2 = items[:]  # shallow copy
>>> items2
[{'id': 1, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]
>>> items2 == items
True

>>> items[0]['id'] = 5
# oops the items2 copy got updated as well!
# -> id of first item got corrupted (5 != 1)

>>> items2 == items
True

>>> items2
[{'id': 5, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]
>>> items
[{'id': 5, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]

# same for copying with list constructor, another shallow copy it turns out
>>> items2 = list(items)
>>> items2 == items
True

>>> items
[{'id': 5, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]
>>> items2
[{'id': 5, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]

>>> items[0]['id'] = 6

# oops
>>> items2 == items
True

# again both data structures' first item were updated
>>> items
[{'id': 6, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]
>>> items2
[{'id': 6, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]

# now the right way
>>> from copy import deepcopy
>>> items2 = deepcopy(items)
>>> items == items2
True
>>> items[0]['id'] = 7

# cool
>>> items == items2
False

# backup items2 intact
>>> items
[{'id': 7, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]
>>> items2
[{'id': 6, 'name': 'laptop', 'value': 1000}, {'id': 2, 'name': 'chair', 'value': 300},
{'id': 3, 'name': 'book', 'value': 20}]
```

Via [PyBites](http://pybit.es/mutability.html) and
[docs.python.org](https://docs.python.org/3.6/library/copy.html)
.
