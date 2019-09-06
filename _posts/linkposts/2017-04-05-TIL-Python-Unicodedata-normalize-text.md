---
layout: single
title: "(TIL) Python: Normalize text with unicodedata"
date: 2017-04-05 05:23
modified: 2017-04-05 05:34
---

Using the `unicodedata` Python module it's easy to normalize any unicode data strings
(remove accents etc):

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

Via [enkipro.com](https://enkipro.com/insight/56cb06ed59fd7a080038f33f).
