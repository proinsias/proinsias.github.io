---
layout: single
title: 'Nix: Echo and sudo for files owned by root'
excerpt: How to modify a file owned by root
date: 2021-05-27
last_modified_at: 2022-11-02
categories: til
tags:
    - echo
    - nix
    - sudo
    - til
---

If you're not root, and you want to modify a file owned by root (say
`/root/tarsnap-backup.sh`), this won't work:

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
