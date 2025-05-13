---
layout: single
title: "Copy a file with progress and save hash to a different file"
excerpt: Using pv, tee, and sha256sum
date: 2023-05-02 21:03
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - pv
    - tee
    - til
---

```shell
pv file.txt | tee >(sha256sum > file.sha1) > file-copy.txt
```

Via [commandlinefu.com](https://www.commandlinefu.com/commands/view/28303/copy-a-file-with-progress-and-save-hash-to-a-different-file).
