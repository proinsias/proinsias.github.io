---
layout: single
title: 'Git: Delete All Untracked Files'
date: 2018-09-27 10:14
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - git
    - til
---

Git provides a command explicitly intended for cleaning up (read: removing)
untracked files from a local copy of a repository.

> git-clean - Remove untracked files from the working tree

Git does want you to be explicit though and requires you to use the `-f`
flag to force it (unless otherwise configured).

Git also gives you fine-grained control with this command by defaulting to
only deleting untracked files in the current directory. If you want
directories of untracked files to be removed as well, you'll need the `-d`
flag.

So if you have a local repository full of untracked files you'd like to get
rid of, run:

```bash
git clean -f -d
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).

Some other options:

If you want to see which files will be deleted you can use the `-n` option before you run the actual command:

```bash
git clean -n
```

To remove ignored files, run:

```bash
git clean -f -X
```

To remove ignored and non-ignored files, run:

```bash
git clean -f -x
```

Note the case difference on the X for the two latter commands.

Via [koukia.ca](https://koukia.ca/how-to-remove-local-untracked-files-from-the-current-git-branch-571c6ce9b6b1).
