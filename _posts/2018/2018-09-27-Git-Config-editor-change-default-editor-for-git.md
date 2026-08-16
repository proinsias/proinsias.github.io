---
layout: single
title: "Git: Change default editor for git"
excerpt: The core.editor option
date: 2018-09-27 10:14
last_modified_at: 2026-08-16 02:17:31
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

Via
[StackOverflow](https://stackoverflow.com/questions/13257519/how-to-change-the-default-editor-for-git/13258538).
