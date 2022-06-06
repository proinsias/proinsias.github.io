---

layout: single
title: "Nix: Monitor the progress of data through a pipe"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
categories: til
tags:

- nix
- til

---

You can use pv to monitor the progress of any pipe, by putting it between input/output
pipes.

Example:

```bash
$ dd if=/dev/urandom | pv | dd of=/dev/null
1,74MB 0:00:09 [ 198kB/s] [ <=> ]
```

You could specify the approximate size with the `--size` if you want a time estimation.

You can also use it to output to stdout:

```bash
$ pv /home/user/bigfile.iso | md5sum
50,2MB 0:00:06 [8,66MB/s] [==>  ] 49% ETA 0:00:06
```

Note that in this case, `pv` recognises the size automatically.

Using `pv` can prove extremely useful when working with big files or processes taking
a long time to complete.
For example you can keep track how fast a file is transferred with `nc` command:

```bash
pv myFile | nc -w 1 example.com 3000
```

Via [enkipro.com](https://app.enkipro.com/#/insight/55b0304dc629433100344a89).
