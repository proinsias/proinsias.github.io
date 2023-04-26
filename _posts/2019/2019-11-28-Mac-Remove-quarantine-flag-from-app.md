---
layout: single
title: 'Mac: Remove quarantine flag from app'
date: 2019-11-28 15:55
last_modified_at: 2023-04-26 02:04:37
excerpt: Using the xattr command
categories:
    - til
tags:
    - mac
    - til
---

I encountered an [issue](https://github.com/MacDownApp/macdown/issues/1106)
with my favorite macos Markdown editor [MacDown](https://github.com/MacDownApp/macdown)
where macos Catalina was reporting the file as damaged.
It [turns out](https://github.com/MacDownApp/macdown/issues/1106#issuecomment-555432071)
that Catalina has tightened the quarantine rules for apps,
but that a command line fix was available,
namely manually removing the quarantine flag for the app:

```bash
> xattr MacDown.app
com.apple.quarantine
> sudo xattr -r -d com.apple.quarantine MacDown.app
Password:
```
