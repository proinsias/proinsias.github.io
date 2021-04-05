---
layout: single
title: "Mac: Sync with time server (Mojave)"
date: 2018-10-25 12:42
modified: 2018-10-25 12:42
categories: til
tags:
  - mac
  - til
---

To check and update your system time in macos Mojave:

```bash
$ sudo sntp -sS pool.ntp.org
Password:
sntp 4.2.8p10@1.3728-o Tue Mar 21 14:36:42 UTC 2017 (136.200.1~2533)
2018-09-29 19:42:41.448103 (-0200) +1087.742403 +/- 725.183462 pool.ntp.org 188.68.36.203 s2 no-leap
```

If you're getting this error:

```bash
kod_init_kod_db(): Cannot open KoD db file /var/db/ntp-kod: No such file or directory
```

try:

```bash
sudo touch /var/db/ntp-kod
sudo chmod 666 /var/db/ntp-kod
```

Via [apple.stackexchange.com](https://apple.stackexchange.com/a/117865).
