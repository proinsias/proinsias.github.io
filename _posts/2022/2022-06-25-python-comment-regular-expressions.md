---
layout: single
title: 'Python: Comment regular expressions'
date: 2022-06-25
last_modified_at: 2023-04-26 13:22:37
excerpt: Use re.VERBOSE to your advantage
categories:
    - til
tags:
    - python
    - regex
    - til
---

> The book ["Dive Into Python"](https://diveintopython3.problemsolving.io/) suggests implementing comments
> using _Verbose Regular Expressions_:
>
> > Python allows you to do this with something called verbose regular expressions.
> > A verbose regular expression is different from a compact regular expression in two ways:
> >
> > -   Whitespace is ignored. Spaces, tabs, and carriage returns are not matched as spaces, tabs, and carriage returns.
> >     They're not matched at all. (If you want to match a space in a verbose regular expression,
> >     you'll need to escape it by putting a backslash in front of it.)
> > -   Comments are ignored. A comment in a verbose regular expression is just like a comment in Python code:
> >     it starts with a `#` character and goes until the end of the line.
> >     In this case it's a comment within a multi-line string instead of within your source code,
> >     but it works the same way.
>
> Example:
>
> ```python
> >>> pattern = """
> ^                   # beginning of string
> M{0,4}              # thousands - 0 to 4 M's
> (CM|CD|D?C{0,3})    # hundreds - 900 (CM), 400 (CD), 0-300 (0 to 3 C's),
>                     #            or 500-800 (D, followed by 0 to 3 C's)
> (XC|XL|L?X{0,3})    # tens - 90 (XC), 40 (XL), 0-30 (0 to 3 X's),
>                     #        or 50-80 (L, followed by 0 to 3 X's)
> (IX|IV|V?I{0,3})    # ones - 9 (IX), 4 (IV), 0-3 (0 to 3 I's),
>                     #        or 5-8 (V, followed by 0 to 3 I's)
> $                   # end of string
> """
> >>> re.search(pattern, 'M', re.VERBOSE)
> 1
> ```
>
> Source and further details [here](https://diveintopython3.problemsolving.io/regular-expressions.html#verbosere).
>
> This method has a slight disadvantage that the caller must know that the pattern is written in a verbose format
> and call it accordingly.

Via [softwareengineering.stackexchange.com](https://web.archive.org/web/20220818173512/https://softwareengineering.stackexchange.com/questions/178355/commenting-regular-expressions/236320%23236320).
