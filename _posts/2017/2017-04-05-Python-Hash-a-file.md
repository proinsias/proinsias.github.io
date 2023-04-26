---
layout: single
title: 'Python: Hash a file'
date: 2017-04-05
last_modified_at: 2023-04-26 13:22:37
excerpt: Using the hashlib module
categories:
    - til
tags:
    - python
    - til
---

```python
import hashlib

BLOCKSIZE = 65536  # Divide file into blocks, so we can handle large files.
hash = hashlib.sha1()  # Or use older `hashlib.md5()`.

with open('file.txt', 'rb') as a_file:
    buf = a_file.read(BLOCKSIZE)
    while len(buf) > 0:
        hash.update(buf)
        buf = a_file.read(BLOCKSIZE)

print(hash.hexdigest())
```

Via [pythoncentral.io](http://pythoncentral.io/hashing-files-with-python/).
