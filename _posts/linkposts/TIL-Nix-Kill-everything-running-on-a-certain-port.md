---
layout: single
title: "(TIL) Nix: Kill Everything Running On A Certain Port"
date:
modified:
---

You can quickly kill everything running on a certain port with the following
command.

```bash
sudo kill `sudo lsof -t -i:3000`
```

This gets a list of pids for all the processes and then kills them.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
