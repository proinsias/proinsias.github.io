---
layout: single
title: "(TIL) Git: LFS Prune"
date:
modified:
---

You can delete files from your local Git LFS cache with the `git lfs prune` command.
This will delete any local Git LFS files that are considered 'old'.
An old file is any file not referenced by:

* the currently checked out commit,
* a commit that has not yet been pushed (to origin, or whatever `lfs.pruneremotetocheck` is set to), or
* a recent commit.

By default, a recent commit is any commit created in the last 'x' days, where 'x' is the sum of:

* the value of the `lfs.fetchrecentrefsdays` property (which defaults to seven), and
* the value of the `lfs.pruneoffsetdays` property (which defaults to three).

Unlike Git's built-in garbage collection,
Git LFS content is not pruned automatically,
so running `git lfs prune` on a regular basis is a good idea to keep your local repository size down.

You can test out what effect a prune operation will have with `git lfs prune --dry-run`,
and exactly which Git LFS objects will be pruned with `git lfs prune --verbose --dry-run`.

As an additional safety check,
you can use the `--verify-remote` option to check whether the remote Git LFS store has a copy of your Git LFS objects
before they are pruned.

This makes the pruning process significantly slower,
but gives you peace of mind knowing that any pruned objects are recoverable from the server.
You can enable the `--verify-remote` option permanently for your system by configuring the `lfs.pruneverifyremotealways`
property globally:

```bash
git config --global lfs.pruneverifyremotealways true
```

The Git LFS command-line client doesn't support pruning files from the server,
so how you delete them depends on your hosting provider.

Via [Atlassian](https://www.atlassian.com/git/tutorials/git-lfs).
