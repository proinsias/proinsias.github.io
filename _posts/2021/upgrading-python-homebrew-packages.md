---
layout: single
title: "Upgrading Python Homebrew packages using pip"
date: 2021-04-04 21:47
modified: 2021-04-04 21:47
categories: til
tags:
  - homebrew
  - python
  - til
---

> Homebrew Python packages work by setting up their own package-specific virtual environments.
This means you can upgrade them without waiting for the tap.

> To find the virtual environment, run `head -n 1` against the Homebrew-provided executable.
For example, VisiData is `vd`, so this works:

```bash
% head -n 1 $(which vd)
#!/usr/local/Cellar/visidata/1.5.2/libexec/bin/python3.8
```

> Now you can call `pip` within that virtual directory to perform the upgrade like so:

```bash
/usr/local/Cellar/visidata/1.5.2/libexec/bin/pip install -U visidata
```

Via [til.simonwillison.net](https://github.com/simonw/til/blob/main/homebrew/upgrading-python-homebrew-packages.md).
