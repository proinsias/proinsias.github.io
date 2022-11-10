---
modified: '2022-11-08 14:20 -0500'
date: '2022-11-08 14:20 -0500'
layout: single
published: true
title: Some useful command line tools
categories: til
excerpt: sponge and pee
tags:
    - til
    - nix
---

[climagic](https://twitter.com/climagic) posted a great
[example](https://twitter.com/climagic/status/846714728235892737)
of multiple commands:

```bash
ping -c100 4.2.2.2 | sponge | pee head tail
```

Let's split this command up – see this
[explainshell](https://explainshell.com/explain?cmd=ping+-c100+4.2.2.2+%7C+sponge+%7C+pee+head+tail)
for some additional detail:

1. `ping -c100 4.2.2.2` pings the
   [DNS server 4.2.2.2](https://4kib.com/4-2-2-2-story-behind-dns-legend/)
   100 times.
2. `sponge` 'soaks' up all the data from `ping`.
3. `pee` (`tee` for pipes) runs each command provided – in this case `head` and `tail`,
   and feeds each command a copy of the standard input.
   The output of all commands is sent to stdout.

Here's an example output of the full pipeline:

```bash
PING 4.2.2.2 (4.2.2.2): 56 data bytes
64 bytes from 4.2.2.2: icmp_seq=0 ttl=56 time=40.236 ms
64 bytes from 4.2.2.2: icmp_seq=1 ttl=56 time=19.956 ms
64 bytes from 4.2.2.2: icmp_seq=2 ttl=56 time=33.536 ms
64 bytes from 4.2.2.2: icmp_seq=3 ttl=56 time=19.312 ms
64 bytes from 4.2.2.2: icmp_seq=4 ttl=56 time=21.025 ms
64 bytes from 4.2.2.2: icmp_seq=5 ttl=56 time=24.594 ms
64 bytes from 4.2.2.2: icmp_seq=6 ttl=56 time=17.206 ms
64 bytes from 4.2.2.2: icmp_seq=7 ttl=56 time=54.491 ms
64 bytes from 4.2.2.2: icmp_seq=8 ttl=56 time=16.781 ms
64 bytes from 4.2.2.2: icmp_seq=94 ttl=56 time=30.563 ms
64 bytes from 4.2.2.2: icmp_seq=95 ttl=56 time=48.805 ms
64 bytes from 4.2.2.2: icmp_seq=96 ttl=56 time=14.286 ms
64 bytes from 4.2.2.2: icmp_seq=97 ttl=56 time=33.670 ms
64 bytes from 4.2.2.2: icmp_seq=98 ttl=56 time=24.716 ms
64 bytes from 4.2.2.2: icmp_seq=99 ttl=56 time=32.956 ms

--- 4.2.2.2 ping statistics ---
100 packets transmitted, 100 packets received, 0.0% packet loss
round-trip min/avg/max/stddev = 12.441/28.711/79.932/14.109 ms
```
