---
layout: single
title: "Nix: Find MAC address of network interfaces with ifconfig"
excerpt: Grep for the hardware address (HWaddr)
date: 2017-03-03
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - nix
    - til
---

To get the MAC addresses of all your interfaces, grep the `HWaddr` from the `ifconfig`
command:

```bash
#for linux
$ ifconfig -a | grep HWaddr
eth0  Link encap:Ethernet HWaddr 00:26:b9:68:a1:93
virbr0 Link encap:Ethernet HWaddr 82:58:ed:e8:08:5a

#for bsd
$ ifconfig
lnc0: flags=108843 mtu 1500
       inet 74.xx.yy.zzz netmask 0xfffffff0
       broadcast 74.xx.yyy.zzz
       ether 00:0c:29:b8:92:8b
```

Via [enkipro.com](https://app.enkipro.com/#/insight/5588a26942a4534d00082acd).
