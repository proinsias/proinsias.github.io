---
layout: single
title: 'Nix: Standard output to clipboard buffer'
excerpt: Using the pbcopy command on macOS
date: 2017-03-03
last_modified_at: 2022-11-23
categories: til
tags:
    - macos
    - nix
    - til
---

Adding `| pbcopy` to the end of any command will send the standard output
to your clipboard.

`ls -al | pbcopy` inside a rails project directory allowed me to paste this:

```bash
Gemfile
Gemfile.lock
README.md
Rakefile
app
bin
config
config.ru
db
features
lib
log
public
script
spec
test
tmp
vendor
```

Via [jwworth/til](https://github.com/jwworth/til).
