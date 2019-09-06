---
layout: single
title: "(TIL) Nix: Standard output to clipboard buffer"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
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
