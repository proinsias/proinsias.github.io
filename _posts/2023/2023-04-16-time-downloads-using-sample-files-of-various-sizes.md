---
layout: single
title: 'Time downloads using sample files of various sizes'
excerpt: Using wget and time
published: true
date: 2023-04-16
last_modified_at: 2023-04-16
categories: til
tags:
    - til
    - time
    - wget
    - nix
---

If you're looking for a way to test your download speeds from the command line,
look no further than the handy `wget` and `time` commands,
together with some sample files of various sizes from
[thinkbroadband.com](https://www.thinkbroadband.com/download)
:

```bash
time wget http://ipv4.download.thinkbroadband.com/100MB.zip
```

Via [ksk001100](https://github.com/ksk001100/ruget/blob/master/README.md#wget).
