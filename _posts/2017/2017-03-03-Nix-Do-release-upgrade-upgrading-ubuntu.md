---
layout: single
title: 'Nix: Upgrading Ubuntu'
excerpt: Using the do-release-upgrade command
date: 2017-03-03 05:34
modified: 2022-11-17 05:34
categories: til
tags:
    - nix
    - til
---

I recently discovered that my Linode box was running a fairly old version of
Ubuntu. Because it is a remote box that I SSH into, there is no graphical
user interface. Upgrading to a newer release can be accomplished with the
following command line utility:

```bash
do-release-upgrade
```

It includes a series of prompts regarding choices about the upgrade and a
lot of waiting.

Adding the `-d` flag will upgrade to the latest development release.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
