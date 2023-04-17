---
layout: single
title: 'Python: Format text paragraphs with textwrap'
excerpt: Wrap and fill lines
date: 2021-04-06
last_modified_at: 2022-11-04
categories: til
tags:
    - python
    - text
    - til
---

> Python's `textwrap` module is useful for rearranging text, e.g. wrapping and filling lines.

```python
# Wrap the text in the string "parallel", so that all lines are a maximum of x characters long:

# When x = 2
textwrap.wrap("parallel", width=2)
# Output:
# ['pa', 'ra', 'll', 'el']

# When x = 4
textwrap.wrap("parallel", width=4)
# Output:
# ['para', 'llel']

# If we would like to include trailing newlines (\n) after each string of a certain width
# we can either use the following syntax:

'\n'.join(textwrap.wrap('text', width=2))
# Output:
# 'te\nxt'

# Or we can use the fill method implemented in `textwrap` module:

textwrap.fill("text", width=2)
# Output:
# 'te\nxt'

# Fill a text:

textwrap.fill(text, width=55)

# Collapse and truncate a text to width :

print(textwrap.shorten
("Hello world!", width=12))
print(textwrap.shorten
("Hello world!", width=11))
# Hello world!
# Hello [...]

# The last words are dropped if the text is longer than the width argument.

# Other useful methods like indent and dedent are available in this module.
```

Via [enkipro.com](https://app.enkipro.com/public/insight/56c75b1edc39f90600d79c53).
See also [PyMOTV-3](https://pymotw.com/3/textwrap/index.html).
