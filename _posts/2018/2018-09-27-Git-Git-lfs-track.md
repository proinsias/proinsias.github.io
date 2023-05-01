---
layout: single
title: 'Git: LFS Track'
excerpt: Adding a new type of large file to your repository
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 18:05:18
categories:
    - til
tags:
    - git
    - til
---

When you add a new type of large file to your repository,
you'll need to tell Git LFS to track it by specifying a pattern using the `git lfs track` command:

```bash
$ git lfs track "*.ogg"
Tracking *.ogg
```

Note that the quotes around `"*.ogg"` are important.
Omitting them will cause the wildcard to be expanded by your shell,
and individual entries will be created for each `.ogg` file in your current directory.

The patterns supported by Git LFS are the same as those supported by `.gitignore`.

These patterns are relative to the directory in which you ran the `git lfs track` command.
To keep things simple, it is best to run `git lfs track` from the root of your repository.
Note that Git LFS does not support negative patterns like `.gitignore` does.

You can stop tracking a particular pattern with Git LFS by simply removing the appropriate line from your
`.gitattributes` file, or by running the `git lfs untrack` command.

Via [Atlassian](https://www.atlassian.com/git/tutorials/git-lfs).
