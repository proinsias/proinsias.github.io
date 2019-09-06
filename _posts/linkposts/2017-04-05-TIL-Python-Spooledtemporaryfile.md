---
layout: single
title: "(TIL) Python: SpooledTemporaryFile"
date: 2017-04-05 05:23
modified: 2017-04-05 05:34
---

The `tempfile.SpooledTemporaryFile` function operates exactly as `TemporaryFile()` does,
except that data is spooled in memory until the file size exceeds the parameter
`max_size`, or until the file’s `fileno()` method is called, at which point the contents
are written to disk and operation proceeds as with `TemporaryFile()`.

The resulting file has one additional method, `rollover()`, which causes the file to roll
over to an on-disk file regardless of its size.

Via
[docs.python.org](https://docs.python.org/3/library/tempfile.html#tempfile.SpooledTemporaryFile)
.
