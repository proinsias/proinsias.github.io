---
modified: '2022-10-21 15:21 -0400'
date: '2022-10-31 15:21 -0400'
layout: single
published: true
title: Force python class to accept only certain attributes
excerpt: Use the slots attribute to limit the attributes of the class
categories: til
tags:
    - python
    - til
---

> We can force Python classes to accept only certain attributes.
> We can achieve this using the **slots** special attribute
>
> ```python
> class Dog():
>     __slots__ = ["name", "age"]
>     def __init__(self, name, age):
>         self.name = name
>         self.age = age
> ```
>
> Here, setting `__slots__` as `["name", "age"]` means that our `Dog` object can only have these 2 attributes.
>
> ```python
> dog = Dog("rocky", 5)    # ok
> dog.name = "fifi"        # ok
> dog.age = 6              # ok
> dog.breed = "mongrel"    # error
> ```
>
> Here, we get an error when we try to set the `breed` attribute of the `Dog` object,
> as only `name` and `age` are allowed based on `__slots__`.
> This error won't happen if we didn't specifically define the `__slots__` attribute.

Via [python.plainenglish.io](https://python.plainenglish.io/4-things-i-only-recently-knew-about-python-18528a5eb59a).
