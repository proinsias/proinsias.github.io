---
layout: single
title: "Git: Create an empty commit"
excerpt: Using the allow-empty flag
date: 2023-05-01
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - git
    - til
---

> If you are working with a CI/CD pipeline (and you should be),
> sometimes you need to trigger the pipeline without making changes to the code.
> Instead of changing files adding empty lines at the end, creating unnecessary logs,
> we can create an empty commit:

```shell
git commit --allow-empty -m 'Empty commit'
git push
```

Via [Daniel Genezini](https://dev.to/dgenezini/7-tips-for-improving-your-productivity-with-git-ajg).

> Usually recording a commit that has the exact same tree as its sole parent commit is a mistake,
> and the command prevents you from making such a commit.
> This option bypasses the safety, and is primarily for use by foreign SCM \[Source Control Management\] interface scripts.

Via the [git docs](https://git-scm.com/docs/git-commit#Documentation/git-commit.txt---allow-empty).
