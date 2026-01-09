---
layout: single
title: "How uv got so fast"
date: 2026-01-09 15:34:57
last_modified_at: 2026-01-09 15:34:57
categories:
    - til
tags:
    - til
    - python
    - rust
---

I love `uv`, the latest python dependencies manager, and use it whenever I can.

The best part about `uv` is its speed when compared to `pip`.
And I've always assumed that its speed came from being written in Rust.

Well, TIL from [Andrew Nesbitt](https://nesbitt.io/2025/12/26/how-uv-got-so-fast.html)
that there are many factors into this performance,
and being written in Rust is just one of them.

> uv installs packages faster than pip by an order of magnitude.
> The usual explanation is “it’s written in Rust.”
> That’s true, but it doesn’t explain much.
> Plenty of tools are written in Rust without being notably fast.
> The interesting question is what design decisions made the difference ...
> standards that enable fast paths, things uv drops that pip supports, and optimizations that don’t require Rust at all.

> Speed comes from elimination. Every code path you don’t have is a code path you don’t wait for.
> uv’s compatibility documentation is a list of things it doesn’t do.

> [And] several key optimizations could be implemented in pip today.
> It doesn’t, largely because backwards compatibility with fifteen years of edge cases takes precedence. 
