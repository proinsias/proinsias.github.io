---
layout: single
title: "Python: Use underscores as visual separators for numbers"
excerpt: Aid readability of numbers
date: 2021-06-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - python
    - til
---

Python 3.6 introduced (via [PEP 515](https://www.python.org/dev/peps/pep-0515/))
the use of underscores as visual separators for numbers, in order to:

> aid readability of long literals, or literals whose value should clearly separate into parts,
> such as bytes or words in hexadecimal notation.

Examples:

```python
# grouping decimal numbers by thousands
amount = 10_000_000.0

# grouping hexadecimal addresses by words
addr = 0xCAFE_F00D

# grouping bits into nibbles in a binary literal
flags = 0b_0011_1111_0100_1110

# same, for string conversions
flags = int('0b_1111_0000', 2)
```

Via [Dan Maftei](https://www.linkedin.com/in/dan-maftei-8b36572a/).
