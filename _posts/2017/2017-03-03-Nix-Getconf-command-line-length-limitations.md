---
layout: single
title: "Nix: Command Line Length Limitations"
excerpt: Using getconf to retrieve standard configuration variables
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

The other day I tried to run a `rm` command on the contents of a directory
with a **LOT** of files.

```bash
rm images/*
```

Instead of deleting the contents of the directory, the following message was
displayed:

```bash
/bin/rm: cannot execute [Argument list too long]
```

Bash wanted to expand the entire command before executing it. It was too
long. But what is too long?

It turns out that we can figure out the max length of commands with the
following command:

```bash
getconf ARG_MAX
```

For me, the result is `262144`.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
