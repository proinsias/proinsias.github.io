---
layout: single
title: "(TIL) PSQL: Change The Current Directory"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
---

When you start a `psql` session, your current directory is what `psql` will
use as its current directory. This is important for meta-commands that use
relative paths based on the current directory -- for instance, the `\i`
meta-command for importing files.

You can change the current directory within a `psql` session using the `
