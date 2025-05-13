---
layout: single
title: "Mac: Gatekeeper via the command line"
excerpt: Manage exceptions
date: 2020-12-10
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
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
