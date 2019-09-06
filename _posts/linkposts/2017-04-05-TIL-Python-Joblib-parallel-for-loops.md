---
layout: single
title: "(TIL) Python: Parallel for loops"
date: 2017-04-05
modified: 2017-04-05
---

> Joblib provides a simple helper class to write parallel for loops using multiprocessing.
The core idea is to write the code to be executed as a generator expression,
and convert it to parallel computing:

```python
>>> from math import sqrt
>>> [sqrt(i ** 2) for i in range(10)]
[0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0]
```

> can be spread over 2 CPUs using the following:

```python
>>> from math import sqrt
>>> from joblib import Parallel, delayed
>>> Parallel(n_jobs=2)(delayed(sqrt)(i ** 2) for i in range(10))
[0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0]
```

> Under the hood, the Parallel object create a multiprocessing `pool` that forks the Python interpreter
> in multiple processes to execute each of the items of the list.
> The `delayed` function is a simple trick to be able to create a tuple `(function, args, kwargs)`
> with a function-call syntax.
> Some algorithms require to make several consecutive calls to a parallel function
interleaved with processing of the intermediate results.
Calling Parallel several times in a loop is sub-optimal
because it will create and destroy a pool of workers ... several times which can cause a significant overhead.
> For this case it is more efficient to use the context manager API of the Parallel class
to re-use the same pool of workers for several calls to the Parallel object:

```python
>>> with Parallel(n_jobs=2) as parallel:
...    accumulator = 0.
...    n_iter = 0
...    while accumulator < 1000:
...        results = parallel(delayed(sqrt)(accumulator + i ** 2)
...                           for i in range(5))
...        accumulator += sum(results)  # synchronization barrier
...        n_iter += 1
...
>>> (accumulator, n_iter)
(1136.596..., 14)
```

Via [PythonHosted](https://pythonhosted.org/joblib/parallel.html).
