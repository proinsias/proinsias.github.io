---
layout: single
title: "Mac: Gatekeeper via the command line"
date: 2020-12-10 17:00
modified: 2020-12-10 17:00
categories: til
tags:
  - gatekeeper
  - mac
  - til
---

Add Gatekeeper Exception:

```bash
spctl --add /path/to/Application.app
```

Remove Gatekeeper Exception:

```bash
spctl --remove /path/to/Application.app
```

Manage Gatekeeper:

```bash
# Status
spctl --status

# Enable (Default)
sudo spctl --master-enable

# Disable
sudo spctl --master-disable
```

Via
[herrbischoff/awesome-macos-command-line](https://github.com/herrbischoff/awesome-macos-command-line#gatekeeper).
