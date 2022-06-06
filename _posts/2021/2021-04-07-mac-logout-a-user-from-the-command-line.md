---
layout: single
title: "Mac: Logout a user from the command line"
date: 2021-04-07 12:21
modified: 2021-04-07 12:21
categories: til
tags:
  - mac
  - til
---

```bash
sudo launchctl bootout gui/$(id -u <username>)
# or
sudo launchctl bootout user/$(id -u <username>)
```

Works on macOS 10.11.x or later.

Via
[apple.stackexchange.com](https://apple.stackexchange.com/questions/126761/way-to-logout-a-user-from-the-command-line-in-os-x-10-9).
