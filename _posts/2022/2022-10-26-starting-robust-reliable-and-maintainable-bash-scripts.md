---
modified: 2022-10-26
date: 2022-10-26
layout: single
published: true
title: Starting robust reliable and maintainable bash scripts
excerpt: A useful header for bash scripts to avoid common bugs
categories: tips
tags:
    - tips
    - nix
    - bash
---

The [`set`](https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html) and [`shopt`](https://www.gnu.org/software/bash/manual/html_node/The-Shopt-Builtin.html) commands in bash are pretty powerful. One of the ways they can help you is by turning on some shell options that will make your bash scripts much more robust, reliable and maintainable. [Aaron Maxwell](http://redsymbol.net) has a nice [discussion](http://redsymbol.net/articles/unofficial-bash-strict-mode/) about this, but here I'll record my own set of commands that I use at the top of my scripts.

```bash
#!/usr/bin/env bash

set -o errexit                # Exit on error. Append || true if you expect an error.
                              # Equivalent to `-e`.
set -o errtrace               # Exit on error inside any functions or subshells.
                              # Equivalent to `-E`.
set -o noclobber              # Don't allow overwriting files. Equivalent to `-C`.
set -o nounset                # Don't allow use of undefined vars.
                              # Use ${VAR:-} to use an undefined VAR. Equivalent to `-u`.
set -o pipefail               # Produce a failure return code if any pipeline command errors.
shopt -s failglob             # Cause globs that don't get expanded to cause errors.
shopt -s globstar 2>/dev/null # Match all files and zero or more sub-directories.
```

Note that I use the long names rather than the short equivalents. When writing scripts (as opposed to typing one-off commands), I prefer to use the long names, as I easily forget what short options refer to.

Another useful option is `set -o xtrace` or `set -x`, which will print a trace of commands in the script – though you may find this overkill, and I typically don't include it.
