---
layout: single
title: 'Nix: Find process preventing file deletion with fuser'
excerpt: Lists process IDs of all processes that have one or more files open
date: 2017-03-03 05:34
modified: 2022-11-17 05:34
categories: til
tags:
    - nix
    - til
---

Sometimes when deleting a file, the error "File is already in use" is encountered,
with further trouble locating the process using the file.

To find any processes using the file you can use `fuser` command :

```bash
fuser -k filename
```

The command above will search for the file so you can kill whatever processes are using
it.

Via [enki.com](https://app.enkipro.com/#/insight/55e8d159cc63eb3a0074d1db).
