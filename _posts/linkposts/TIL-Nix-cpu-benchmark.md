---
layout: single
title: "(TIL) Nix: CPU Benchmark"
date:
modified:
---

`dd` in conjunction with any stream-processing CPU-intensive program can be used
as a simple CPU benchmark!

You can run this out of the box as follows:

```bash
$ dd if=/dev/zero bs=1M count=1024 | md5sum
1024+0 records in
1024+0 records out
1073741824 bytes (1.1 GB) copied,
2.28735 s, 469 MB/s
cd573cfaace07e7949bc0c46028904ff  -
```

In this case the `md5sum` program was used,
which calculates the MD5 hash of data that is fed to it.

In effect, `dd` here fetches 1 GB of zeroes from the Linux kernel,
feeds that to `md5sum`,
and then prints how fast in MB/sec that was processed.
This was executed on a modern 3.6 GHz AMD Phenom II CPU.

Via [enki.com](https://insights.enki.com/insight/5586093a5c637c4b29b92748).
