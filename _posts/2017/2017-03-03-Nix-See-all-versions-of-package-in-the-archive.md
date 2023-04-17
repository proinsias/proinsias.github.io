---
layout: single
title: 'Nix: See all versions of package in the archive'
excerpt: Using the apt-cache policy command
date: 2017-03-03
last_modified_at: 2022-11-30
categories: til
tags:
    - nix
    - til
---

Use `apt-cache policy <package>`. For example:

```bash
$ apt-cache policy nautilus
nautilus:
  Installed: 1:3.18.5-0ubuntu1~xenial1
  Candidate: 2017-03-03 05:34 1:3.18.5-0ubuntu1~xenial1
  Version table:
 *** 1:3.18.5-0ubuntu1~xenial1 500
        500 file:/media/Linux/apt-repo/xenial1  Packages
        500 http://ppa.launchpad.net/budgie-remix/ppa/ubuntu xenial/main amd64 Packages
        500 http://ppa.launchpad.net/gnome3-team/gnome3/ubuntu xenial/main amd64 Packages
        100 /var/lib/dpkg/status
     1:3.18.4.is.3.14.3-0ubuntu5 500
        500 http://us.archive.ubuntu.com/ubuntu xenial-updates/main amd64 Packages
     1:3.18.4.is.3.14.3-0ubuntu4 500
        500 file:/media/Linux/apt-repo/xenial1  Packages
        500 http://us.archive.ubuntu.com/ubuntu xenial/main amd64 Packages
     1:3.14.2-0ubuntu13 500
        500 file:/media/Linux/apt-repo/wily  Packages
```

Via [askubuntu](https://askubuntu.com/questions/447/how-can-i-see-all-versions-of-a-package-that-are-available-in-the-archive).
