---
layout: single
title: 'Nix: Where Are The Binaries'
excerpt: Using the where command
date: 2017-03-03
modified: 2023-01-05
categories: til
tags:
    - nix
    - til
---

When I want to know where an executable is, I use `which` like so:

```bash
$ which rails
/Users/jbranchaud/.gem/ruby/2.1.4/bin/rails
```

That is the rails binary on my path that will be used if I enter a rails
command.

However, with something like rails, there may be multiple versions on your
path. If you want to know where all of them are, you can use `where`, like
so:

```bash
$ where rails
/Users/jbranchaud/.gem/ruby/2.1.4/bin/rails
/Users/jbranchaud/.rubies/2.1.4/bin/rails
/usr/bin/rails
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
