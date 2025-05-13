---
layout: single
title: "Python: Normalize text with unicodedata"
excerpt: Remove accents, etc.
date: 2017-04-05 05:23
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - python
    - til
---

Using the `unicodedata` Python module it's easy to normalize any unicode data strings
(remove accents, etc):

```python
import unicodedata

data = u'ïnvéntìvé'
normal = unicodedata.normalize\
    ('NFKD', data).\
    encode('ASCII', 'ignore')
print(normal)
```

The output will be:

```python
b'inventive'
```

The `NFKD` stands for Normalization Form Compatibility Decomposition, and this is where
characters are decomposed by compatibility, also multiple combining characters are
arranged in a specific order.

Via [enkipro.com](https://app.enkipro.com/#/insight/56cb06ed59fd7a080038f33f).
