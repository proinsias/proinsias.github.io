---
modified: '2022-10-24 13:52 -0400'
date: '2022-10-24 13:52 -0400'
layout: single
published: true
title: You Should Be Using Python's Walrus Operator
excerpt: How and why to automatically use the walrus operator
categories: til
tags:
  - python
  - til
---
You really [should be using python's walrus operator](https://martinheinz.dev/blog/79) – see below for some examples of why from this excellent discussion.

If you are interested in automatically rewritting your code to use this operator, check out the [pre-commit](http://pre-commit.com) hook [auto-walrus](https://github.com/MarcoGorelli/auto-walrus). Thanks to [pythonbytes.fm](https://pythonbytes.fm/episodes/show/305/decorators-need-love-too) for the tip!

> Let's imagine a function called func() that performs some very expensive computations.
> It takes a long time to compute results, so we don't want to call it many times:
>
> ```python
> # "func" called 3 times
> result = [func(x), func(x)**2, func(x)**3]
>
> # Reuse result of "func" without splitting the code into multiple lines
> result = [y := func(x), y2, y3]**
> ```
> 
> In the first list declaration above, the `func(x)` is called 3 times,
> everytime returning \[the\] same result, which wastes time and compute resources. 
> When rewritten using walrus operator, `func()` is invoked only once,
> assigning its result to y and reusing it for \[the\] remaining 2 list values.
>
> Consider the following list comprehensions with the same expensive func():
>
> ```python
> result = [func(x) for x in data if func(x)]
>
> result = [y for x in data if (y := func(x))]
> ```
>
> In the first line, `func(x)` is called twice in every loop. Instead - using walrus operator -
> we compute it once in the if statement and then reuse it.
> The code length is same, both lines are equally readable,
> but the second one is twice as efficient.
> 
> One of the most common use cases for walrus operator is reducing nested conditionals,
> such as when using RegEx matching:
> 
> ```python
> if m := (re.match(pattern1, test)):
>     print(f"Matched 1st pattern: '{m.group(1)}'")
> elif m := (re.match(pattern2, test)):
>     print(f"Matched 2nd pattern: '{m.group(1)}'")
> ```
> 
> You can use Python's `any()` and `all()` functions to verify whether any or all values
> in some iterable satisfy certain condition.
> What if you however want to also capture the value that caused `any()` to return `True`
> (so-called "witness") or the value that caused `all()` to fail (so-called "counterexample")?
>
> ```python
> numbers = [1, 4, 6, 2, 12, 4, 15]
>
> # Only returns boolean, not the values
> print(any(number > 10 for number in numbers))  # True
> print(all(number < 10 for number in numbers))  # False
>
> # ---------------------
> any((value := number) > 10 for number in numbers)  # True
> print(value)  # 12
>
> all((counter_example := number) < 10 for number in numbers)  # False
> print(counter_example)  # 12
> ```
> 
> Both `any()` and `all()` use short-circuiting to evaluate the expression.
> This means that they stop the evaluation as soon as they find the first "witness"
> or "counterexample" respectively.
> Therefore, with this trick the variable created by walrus operator
> will always give us the first "witness"/"counterexample".
> 
> this really isn't a gotcha, but rather slight limitation.
> You currently cannot use inline type hints with \[the\] walrus operator.
> Therefore, if you want to specify type of the variable, then you need to split it into 2 lines:
>
> ```python
> from typing import Optional
> 
> value: Optional[int] = None
> while value := some_func():
>     ...  # Do stuff
> ```
