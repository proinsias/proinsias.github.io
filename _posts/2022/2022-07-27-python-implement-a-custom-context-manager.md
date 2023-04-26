---
layout: single
title: 'Python: Implement a custom context manager'
date: 2022-07-27
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
excerpt: How to create your own 'with'
tags:
    - context
    - python
    - til
---

> The context manager type is a Python feature to help work with unmanaged resources (e.g. file streams)
> which it is better to clean up or shutdown in an orderly manner after use, e.g. always closing a file after use).
>
> The use of the with statement (on objects that support it, such as built-in or custom context managers)
> is used to ensure resources are cleaned up after use.
>
> `with` can be seen as syntactic sugar for the `try/except/finally` block.
>
> To implement a custom context manager, two methods must be implemented:
>
> ```python
> class my_context_manager:
>   def __enter__(self):
>       # set up things
>       return thing
>   def __exit__(self,type,value,traceback):
>       # deal with unmanaged resources
>
> with my_context_manager as custom_name
>    # work with resources
> ```
>
> When the with statement is executed, `__enter__` is called, assigning the returned value to the variable after as.
>
> Whatever happens in the code, the `__exit__` method will be called in the end to make sure nothing is left unmanaged.

Via [enki.com](https://www.enki.com).
