---
layout: single
title: "Pandas: Pipe function"
date: 2020-09-11
last_modified_at: 2025-05-13 00:33:19
excerpt: Create a method chain in pandas
categories:
    - til
tags:
    - pandas
    - pipe
    - til
---

> Pandas introduced `pipe()` starting from version 0.16.2. `pipe()` enables user-defined methods in method chains.
>
> Instead of writing

```python
# f(), g(), and h() are user-defined function
# df is a Pandas DataFrame
f(g(h(df), arg1=a), arg2=b, arg3=c)
```

> we can write

```python
(df.pipe(h).pipe(g, arg1=a).pipe(f, arg2=b, arg3=c))
```

> > Method chaining is a programmatic style of invoking multiple method calls sequentially
> > with each call performing an action on the same object and returning it.
> >
> > It eliminates the cognitive burden of naming variables at each intermediate step.
> > Fluent Interface, a method of creating object-oriented API relies on method cascading (aka method chaining).
> > This is akin to piping in Unix systems.

Via [towards data science](https://towardsdatascience.com/using-pandas-pipe-function-to-improve-code-readability-96d66abfaf8).
