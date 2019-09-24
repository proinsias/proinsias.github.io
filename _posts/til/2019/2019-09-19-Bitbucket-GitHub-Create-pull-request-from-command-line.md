---
layout: single
title: "(TIL) Bitbucket/GitHub: Create pull request from command line"
date: 2019-09-19 09.59
date: 2019-09-19 09.59
categories: til
tags:
  - bitbucket
  - git
  - github
  - til
---

# Create a GitHub pull request from command line

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

# Create a GitHub pull request using hub

If you want more control over this process from the command line,
check out GitHub's wonderful [`hub`](https://github.com/github/hub) tool "that makes git easier to use with GitHub".
For example, `hub` enables you to create a pull request with a pre-populated title and description:

```bash
hub pull-request \
    --browse \
    --message "My title" \
    --message "My description." \
    --assign proinsias
```

# Create a Bitbucket pull request from command line

The following script (based on [bitbucket-pr](https://www.npmjs.com/package/bitbucket-pr) and updated for python3) achieves something similar for Bitbucket repos:

```bash
#!/bin/bash

project=${PWD##*/}
rawBranch=$(git rev-parse --abbrev-ref HEAD)
org=$(git config --get remote.origin.url | grep -Eo "(\w*)/$project.git\/?$" | cut -d/ -f1)
branch=$(python -c "import urllib.parse; print(urllib.parse.quote_plus('''$rawBranch'''))")
if [[ $org = *[!\ ]* ]]
then
    echo "Opening browser..."
else
    echo "Not in a bitbucket repo"
    exit
fi

open "https://bitbucket.org/${org}/${project}/pull-requests/new?source=${branch}"
```
