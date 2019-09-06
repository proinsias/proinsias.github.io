---
layout: single
title: "(TIL) Python:  Cache function output"
date: 2017-04-05
modified: 2017-04-05
---

> Joblib traces parameters passed to a function, and if the function has been called with the
same parameters it returns the return value cached on a disk.

With only a few lines of code, you get caching of the output of any function:

```python
import tempfile

import sklearn.externals

memory = sklearn.externals.joblib.Memory(cachedir=tempfile.mkdtemp(), verbose=0, )

@memory.cache
def computation(p1, p2):
    pass
```

Via [HackerNoon](https://hackernoon.com/10-tips-on-using-jupyter-notebook-abc0ba7028a4).

To clear the cache, use [`memory.clear()`](https://pythonhosted.org/joblib/generated/joblib.Memory.html).

## Comparison with memoize

> The [memoize decorator](http://code.activestate.com/recipes/52201/) caches in memory all the inputs
and outputs of a function call.
> [U]sing memoize with large objects will consume all the memory, where with Memory,
objects are persisted to disk, using a persister optimized for speed and memory usage.
> [M]emoize is best suited for functions with “small” input and output objects,
whereas Memory is best suited for functions with complex input and output objects,
and aggressive persistence to disk.

Via [PythonHosted](https://pythonhosted.org/joblib/memory.html).

## Gotchas

> memory is designed for pure functions and it is not recommended to use it for methods.
If you want to use cache inside a class the recommended pattern is to cache a pure function
and use the cached function inside your class, i.e. something like this:

```python
@mem.cache
def compute_func(arg1, arg2, arg3):
    # long computation
    return result

class Foo(object):
    def __init__(self, args):
        self.data = None

    def compute(self):
        self.data = compute_func(self.arg1, self.arg2, 40)
```

> Using Memory for methods is not recommended and has some caveats that make it very fragile
from a maintenance point of view because it is very easy to forget about these caveats
when your software evolves. If you still want to do it, here are a few known caveats:
> [First, y]ou cannot decorate a method at class definition.
> The following code won’t work:

```python
class Foo(object):

    @mem.cache  # WRONG
    def method(self, args):
        pass
```

> The right way to do this is to decorate at instantiation time:

```python
class Foo(object):

    def __init__(self, args):
        self.method = mem.cache(self.method)

    def method(self, ...):
        pass
```

> [Second, t]he cached method will have self as one of its arguments.
That means that the result will be recomputed if anything with self changes.

Via [PythonHosted](https://pythonhosted.org/joblib/memory.html).

## Ignoring some arguments

> It may be useful not to recalculate a function when certain arguments change,
for instance a debug flag. Memory provides the `ignore` list:

```python
>>> @memory.cache(ignore=['debug'])
... def my_func(x, debug=True):
...     print('Called with x = %s' % x)
>>> my_func(0)
Called with x = 0
>>> my_func(0, debug=False)
>>> my_func(0, debug=True)
>>> # my_func was not reevaluated
```

Via [PythonHosted](https://pythonhosted.org/joblib/memory.html).
