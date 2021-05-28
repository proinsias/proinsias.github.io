---
layout: single
title: "Nix: Echo and sudo"
date: 2021-05-27 20:04
modified: 2021-05-27 20:04
categories: til
tags:
  - echo
  - nix
  - sudo
  - til
---

This doesn't work:

```bash
sudo echo '#!/bin/sh
/usr/bin/tarsnap -c \
  -f "$(uname -n)-$(date +%Y-%m-%d_%H-%M-%S)" \
  /home/simon/team-storage' > /root/tarsnap-backup.sh
```

But this will:

```bash
echo '#!/bin/sh
/usr/bin/tarsnap -c \
  -f "$(uname -n)-$(date +%Y-%m-%d_%H-%M-%S)" \
  /home/simon/team-storage' | sudo tee /root/tarsnap-backup.sh > /dev/null
```

Via [@simonw](https://github.com/simonw/til/blob/main/linux/echo-pipe-to-file-su.md). 
