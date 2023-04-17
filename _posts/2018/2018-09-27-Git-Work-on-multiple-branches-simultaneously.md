---
layout: single
title: 'Git: Work on multiple branches simultaneously'
date: 2018-09-27 10:14
last_modified_at: 2018-09-27 10:14
categories: til
tags:
    - git
    - til
---

Say you are on a feature branch, and want to make a bug fix in `master`. Rather than
`stash`ing your changes, or `clone`-ing the entire repository, you can create a whole new
working copy based on `master` as follows:

```bash
git fetch
git worktree add -b bugfix-1234 ../bugfix origin/master
```

The above sets up a new worktree at `../bugfix` (assuming, and recommended that you are at
the root of your original cloned repository).
This new working tree is called a "linked working tree" as opposed to the "main working
tree" prepared by "git init" or "git clone".
A repository has one main working tree (if it's not a bare repository) and zero or more
linked working trees.

The `-b bugfix-1234` option creates a new branch, named `bugfix-1234`, based off `master`.
If the `-b` option is not given, a new branch matching the directory of your worktree,
`bugfix`, is created. You can now `cd ../bugfix` and work on this new worktree (and
branch) as though it were a new clone of the repository. Your original clone and work is
not interrupted.

Another possibility is to use a 'detached branch':

```bash
git worktree add --detach ../project-build HEAD
cd ../project-build
./run_build.sh
```

The above creates a worktree with a detached branch off the current HEAD. We can use this
temporary worktree, and continue to make changes in our original worktree.

To remove worktrees, use `rm -rf ../bugfix && git worktree prune` when you are done with
your new worktree. The `git worktree prune` is optional, and will remove metadata around
your worktree from the repository immediately. If not used, the normal git garbage
collection process will eventually clean it up.

Note that if you move a linked working tree, you need to manually update the
administrative files so that they do not get pruned automatically.

If a linked working tree is stored on a portable device or network share which is not
always mounted, you can prevent its administrative files from being pruned by issuing the
`git worktree lock` command, optionally specifying `--reason` to explain why the working
tree is locked.

Via StackToHeap.com and [Git](https://git-scm.com/docs/git-worktree).
