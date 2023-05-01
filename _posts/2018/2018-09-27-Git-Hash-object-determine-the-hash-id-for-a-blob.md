---
layout: single
title: 'Git: Determine The Hash Id For A Blob'
excerpt: Using the git hash-object command
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 18:05:18
categories:
    - til
tags:
    - git
    - til
---

Git's `hash-object` command can be used to determine what hash id will be
used by git when creating a blob in its internal file system.

```bash
$ echo 'Hello, world!' > file.txt
$ git hash-object file.txt
af5626b4a114abcb82d63db7c8082c3c4756e51b
```

When a commit happens, git will generate this digest (hash id) based on the
contents of the file. The name and location of the file don't matter, just
the contents. This is the magic of git. Anytime git needs to store a blob,
it can quickly match against the hash id in order to avoid storing duplicate
blobs.

Try it on your own machine, you don't even need to initialize a git
repository to use `git hash-object`.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
