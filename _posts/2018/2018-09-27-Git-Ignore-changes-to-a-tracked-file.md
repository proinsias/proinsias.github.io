---
layout: single
title: "Git: Ignore Changes To A Tracked File"
excerpt: Using the git update-index command
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 18:05:18
categories:
    - til
tags:
    - git
    - til
---

Files that should never be tracked are listed in your `.gitignore` file. But
what about if you want to ignore some local changes to a tracked file?

You can tell git to assume the file is unchanged:

```bash
git update-index --assume-unchanged <some-file>
```

Reversing the process can be done with the `--no-assume-unchanged` flag.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
