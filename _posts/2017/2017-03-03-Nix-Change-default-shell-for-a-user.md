---
layout: single
title: 'Nix: Change Default Shell For A User'
excerpt: Take a new shell for a spin!
date: 2017-03-03 05:34
modified: 2022-11-15 05:34
categories: til
tags:
    - nix
    - til
---

You can change the default shell program for a particular unix user with the
`chsh` command. Just tell it what shell program you want to use (e.g. `bash`
or `zsh`) and which user the change is for:

```bash
[sudo] chsh -s /usr/bin/zsh username
```

This command needs to be invoked with root privileges.

This command updates the entry for that user in the `/etc/passwd` file.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
