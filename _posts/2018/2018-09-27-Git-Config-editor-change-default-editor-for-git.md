---
layout: single
title: 'Git: Change default editor for git'
date: 2018-09-27 10:14
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - git
    - til
---

To set the default editor for `git` to be say Textwrangler, use:

```bash
git config --global core.editor "edit -w"
```

Via [StackOverflow](http://stackoverflow.com/a/13258538/1257318).
