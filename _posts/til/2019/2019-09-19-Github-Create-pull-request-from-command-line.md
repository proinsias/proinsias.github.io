---
layout: single
title: "(TIL) Github: Create pull request from command line"
date: 2019-09-19 09.59
date: 2019-09-19 09.59
categories: til
tags:
  - git
  - github
  - til
---

You may have noticed that when you push a new branch to a GitHub repository,
you get a handy URL to create a corresponding pull request:

```bash
$ git checkout -b test
Branch 'test' set up to track local branch 'master' by rebasing.
Switched to a new branch 'test'

$ git push -u origin test
Total 0 (delta 0), reused 0 (delta 0)
remote:
remote: Create a pull request for 'test' on GitHub by visiting:
remote:      https://github.com/proinsias/proinsias.github.io/pull/new/test
remote:
To github.com:proinsias/proinsias.github.io.git
 * [new branch]      test -> test
Branch 'test' set up to track remote branch 'test' from 'origin' by rebasing.
```

You can of course visit the URL from the command line:

```bash
open https://github.com/proinsias/proinsias.github.io/pull/new/test
```

If you want more control over this process from the command line,
check out GitHub's wonderful [`hub`](https://github.com/github/hub) tool "that makes git easier to use with GitHub".
For example, `hub` enables you to create a pull request with a pre-populated title and description:

```bash
hub pull-request --browse --message "My title" --message "My description."
```
