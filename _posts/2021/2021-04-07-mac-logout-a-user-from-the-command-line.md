---
layout: single
title: 'Mac: Logout a user from the command line'
excerpt: Skip the UI entirely
date: 2021-04-07
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - mac
    - til
---

You don't have to use the macOS UI to logout a user. Instead, in the Terminal use:

```bash
sudo launchctl bootout gui/$(id -u <username>)
# or
sudo launchctl bootout user/$(id -u <username>)
```

Works on macOS 10.11.x or later.

Via
[apple.stackexchange.com](https://apple.stackexchange.com/questions/126761/way-to-logout-a-user-from-the-command-line-in-os-x-10-9).
