---
layout: single
title: 'Git: Use a file from another branch'
excerpt:
date: 2018-09-27 10:14
last_modified_at: 2023-05-01 13:43:06
categories:
    - til
tags:
    - git
    - til
---

Sometimes you just need one file from another branch. Sure you could `git cherry-pick`
but then you're dealing with commits. That sort of thing gets sticky fast; don't go there.

The best way is to use your old pal `git checkout`. Just make sure you're
on the branch you want to bring the file into and then checkout the file
from its source branch. Here's the syntax.

```bash
git checkout my-awesome-source-branch the/path/to/your_file.rad
```

That's it – enjoy.

Via [thoughtbot/til](https://github.com/thoughtbot/til).
