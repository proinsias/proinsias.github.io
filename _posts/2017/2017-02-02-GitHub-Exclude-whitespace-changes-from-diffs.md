---
layout: single
title: "GitHub: Exclude Whitespace Changes From GitHub Diffs"
excerpt: Just add w=1 to the diff URL
date: 2017-02-02
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - git
    - github
    - til
---

If you run a tidy ship and use plugins like
[vim-spacejam](https://github.com/rondale-sc/vim-spacejam), then whitespace
changes cluttering up your git diffs probably isn't much of an issue.

However, if you are working with other people or messier code bases, then
you may not be so lucky. If there are a bunch of whitespace changes in a
commit, then that is going to make the diff view of a commit on GitHub
annoying, and perhaps hard, to read.

You can cut to the chase by excluding whitespace changes from GitHub's diff
view by adding `w=1` to the diff URL.

Check out [this view of the
diff](https://github.com/jbranchaud/dotfiles/commit/fad58dfda91e61972b3c28e7e967bb631140e71e)
and then [this view of the diff that excludes
whitespace](https://github.com/jbranchaud/dotfiles/commit/fad58dfda91e61972b3c28e7e967bb631140e71e?w=1).

Via [jbranchaud/til](https://github.com/jbranchaud/til).
