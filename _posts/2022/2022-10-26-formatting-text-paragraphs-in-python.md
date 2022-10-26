---
modified: '2022-10-26 10:03 -0400'
date: '2022-10-26 10:03 -0400'
layout: single
published: true
title: Formatting text paragraphs in python
excerpt: The textwrap module to the rescue!
categories: til
tags:
  - python
  - til
---
> The textwrap module can be used to format text for output in situations
> where pretty-printing is desired.
> It offers programmatic functionality similar to the paragraph wrapping
> or filling features found in many text editors and word processors.

Given a sample text:

```python
sample_text = '''
    The textwrap module can be used to format text for output in
    situations where pretty-printing is desired.  It offers
    programmatic functionality similar to the paragraph wrapping
    or filling features found in many text editors.
    '''
```

you can clean up the text and then fill or wrap it using:

```python
import textwrap

dedented_text = textwrap.dedent(sample_text).strip()

width = 45
print('{} Columns:\n'.format(width))
print(textwrap.fill(dedented_text, width=width))
print()
```

to get:

```python
The textwrap module can be used to format
text for output in situations where pretty-
printing is desired.  It offers programmatic
functionality similar to the paragraph
wrapping or filling features found in many
text editors.
```

Via [The Python 3 Module of the Week](https://pymotw.com/3/textwrap/index.html) and [enki.com](https://app.enki.com/public/insight/56c75b1edc39f90600d79c53).