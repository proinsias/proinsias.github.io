---
layout: single
title: "Git: Intro to Large File Storage (LFS)"
date: 2018-09-27 10:14
last_modified_at: 2018-09-27 10:14
categories: til
tags:
  - git
  - til
---

## Setting up Git LFS

Install the package:

```bash
brew install git-lfs
```

To create a new Git LFS aware repository, you'll need to run the following after you create the repository:

```bash
git lfs install
```

This installs a special `pre-push` Git hook in your repository that will transfer Git LFS files to the server when you
`git push`.

Git LFS storage is content addressable:
content is stored against a key which is a SHA-256 hash of the content itself.
This means it is always safe to re-attempt transferring Git LFS files to the server;
you can't accidentally overwrite a Git LFS file's contents with the wrong version.

If you have a Git LFS SHA-256 OID,
you can determine which commits reference it with `git log --all -p -S <OID>`.

Note that there is currently no way of resolving binary merge conflicts with Git LFS.

Via [Atlassian](https://www.atlassian.com/git/tutorials/git-lfs).
