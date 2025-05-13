---
layout: single
title: "Python: repr vs str dunder methods"
excerpt: Use __repr__() for Programmers vs __str__() for Users
date: 2023-04-17
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - til
    - python
---

[RealPython.com](https://realpython.com/python-repr-vs-str/) has a great article on how to think about the
`__repr__()` and `__str__()` methods for classes.

# When should you use one method instead of the other?

> In Short: Use `.__repr__()` for Programmers vs `.__str__()` for Users.
>
> The reason there are two methods to display an object is that they have different purposes:
>
> -   `.__repr__()` provides the official string representation of an object, aimed at the programmer.
> -   `.__str__()` provides the informal string representation of an object, aimed at the user.
>
> In general, \[`.__repr__()`\] provides detailed and unambiguous information about the object.
> Another important property of the official string representation is
> that a programmer can normally use it to re-create an object equal to the original one.
>
> \[The `.__str__()`\] representation enables any user to understand the data contained in the object.
> Usually, it's simpler and easier to read for a user.

As an example, consider an instance of the `datetime` class in the `datetime` module:

```python
>>> import datetime
>>> today = datetime.datetime.now()

>>> today
datetime.datetime(2023, 2, 18, 18, 40, 2, 160890)

>>> print(today)
2023-02-18 18:40:02.160890
```

> \[The `.__repr__()`\] representation shows the name of the data type and all the arguments
> needed to re-create the object.
> ...
> \[The `.__str__()` representation\] shows the
> \[International Organization for Standardization (ISO)\] standard format for displaying dates and times.

> You can also access the official and informal string representations
> using the built-in functions `repr()` and `str()`:

```python
>>> import datetime
>>> today = datetime.datetime.now()

>>> repr(today)
'datetime.datetime(2023, 2, 18, 18, 40, 2, 160890)'
>>> today.__repr__()
'datetime.datetime(2023, 2, 18, 18, 40, 2, 160890)'

>>> str(today)
'2023-02-18 18:40:02.160890'
>>> today.__str__()
'2023-02-18 18:40:02.160890'
```

# How to use these methods with f-strings

Note that:

> f-strings display the informal string representation that `.__str__()` returns.
> You can get the official string representation from `.__repr__()`
> by using the string conversion flag `"!r"` in the f-string:

```python
>>> f"{today}"
'2023-02-18 18:40:02.160890'

>>> f"{today!r}"
'datetime.datetime(2023, 2, 18, 18, 40, 2, 160890)'
```

> You can also use f-strings with an equal sign (`=`) to show both the variable name and its value.
> You'll use this option primarily for debugging purposes:

```python
>>> f"{today = }"
'today = datetime.datetime(2023, 2, 18, 18, 40, 2, 160890)'
```

> Note that when you use an equal sign,
> the f-string defaults to using the official string representation returned by `.__repr__()`.
> The representation aimed at the programmer is the most appropriate in this case
> since the equal sign in f-strings is normally used for debugging a program.
>
> You can override this behavior using the conversion flag `"!s"`:

```python
>>> f"{today = !s}"
'today = 2023-02-18 18:40:02.160890'
```

# An example class with these methods

> When you define a class, it's a best practice to include the official string representation by defining `.__repr__()`.
> By including this method, you avoid the default representation, which isn't very useful in most cases.
> This method will also provide a fallback option for the informal string representation,
> which comes in handy when you can use the same representation for both use cases.
>
> If you need to display the object to a user, then you can also define `.__str__()`.
> This method will provide an output that's easier for the user to understand.

Here's an example class:

```python
>>> class Book:
    def __init__(self, title, author):
        self.title = title
        self.author = author

    def __repr__(self):
        class_name = type(self).__name__
        return f"{class_name}(title={self.title!r}, author={self.author!r})"

    def __str__(self):
        return f'"{self.title}" by {self.author}'

>>> odyssey = Book("The Odyssey", "Homer")

>>> print(repr(odyssey))
Book(title='The Odyssey', author='Homer')

>>> print(str(odyssey))
"The Odyssey" by Homer
```
