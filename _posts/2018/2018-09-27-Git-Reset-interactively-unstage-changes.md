---
layout: single
title: "Git: Interactively Unstage Changes"
excerpt: Using the git reset --patch command
date: 2018-09-27 10:14
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - git
    - til
---

I often use `git add --patch` to interactively stage changes for a commit.
Git takes me through changes to tracked files piece by piece to check if I
want to stage them. This same interactive _staging_ of files can be used in
reverse when removing changes from the index. Just add the `--patch` flag.

You can use it for a single file

```bash
git reset --patch README.md
```

or you can let it operate on the entire repository

```bash
git reset --patch
```

This is useful when you've staged part of a file for a commit and then
realize that some of those changes shouldn't be committed.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
