---
layout: single
title: "Mac: Software Update from the Command Line"
date: 2019-11-26 16:04
last_modified_at: 2023-04-26 02:04:37
excerpt: Via the softwareupdate command
categories:
    - til
tags:
    - mac
    - til
---

There are [lots of Terminal commands](https://web.archive.org/web/20200916141733/https://github.com/jamf/erase-install-webinar/wiki)
that you can use to change or update your Mac's OS.
My favorite is this quick tip to download macOS updates and installation files:

```bash
# To download the latest macOS update.
softwareupdate —fetch-full-installer
# To download older builds of macOS, e.g., build 10.14.5.
softwareupdate —fetch-full-installer --full-installer-version 10.14.5
```

Via [lifehacker.com](https://lifehacker.com/how-to-download-and-install-older-macos-versions-with-t-1839671161).
