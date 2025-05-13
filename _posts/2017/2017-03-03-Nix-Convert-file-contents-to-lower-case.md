---
layout: single
title: "Nix: Convert file contents to lower case with tr"
excerpt: tr is short for translate characters
date: 2017-03-03
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - nix
    - til
---

To convert the contents of a file to all lower case, you can use:

```shell
tr A-Z a-z < input  # convert ASCII characters
tr '[:upper:]' '[:lower:]' < input  # convert all alphabetic characters
```

Via [unix.stackexchange.com](https://unix.stackexchange.com/a/171604).
