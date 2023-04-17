---
layout: single
title: 'Nix: Disk Speed Benchmark'
excerpt: Using the dd command
date: 2017-03-03
last_modified_at: 2023-01-05
categories: til
tags:
    - nix
    - til
---

In Linux, the `dd` command can be used for simple I/O performance measurements
as follows:

```bash
$ dd if=/dev/zero of=/root/testfile bs=1G count=1 oflag=direct
1+0 records in
1+0 records out
1073741824 bytes (1.1 GB) copied,
32.474 s, 33.1 MB/s
```

Here the test took 32.474 seconds to run and 33.1 MB/s was the actual disk speed.
Don't forget to delete the test file when finished.

Flags:

-   `if`: input file;
-   `of`: output file;
-   `bs`: sets the if and of sizes to bytes;
    block size (base 10 integer, 1G=1024×1024×1024 bytes = 1.073 GB);
-   `count`: number of blocks (1 means that 1 block of 1G is copied);
-   `oflag=direct`: uses direct I/O data, avoiding the buffer cache; and
    it speeds up the process 1.

Via [enki.com](https://app.enkipro.com/#/insight/55860b435c637c4b29b92749).
