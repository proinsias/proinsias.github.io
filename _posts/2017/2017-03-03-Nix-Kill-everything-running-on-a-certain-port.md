---
layout: single
title: "Nix: Kill Everything Running On A Certain Port"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
categories: til
tags:
  - nix
  - til
---

You can quickly kill everything running on a certain port with the following
command.

```bash
sudo kill `sudo lsof -t -i:3000`
```

This gets a list of pids for all the processes and then kills them.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
