---
layout: single
title: 'Nix: Sponge soaks up standard input and writes it to a file'
excerpt: Easily construct pipelines that read from and write to the same file
date: 2021-05-21
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - til
    - nix
---

I'm a huge fan of [`jq`](https://stedolan.github.io/jq/), a JSON parser for the command line.
It's great for reading elements from a JSON file:

```shell
> jq '.debug.savePayload' file.json
false
```

And for creating a new file by adding elements to an existing file:

```she
jq '. + {"name": "Francis"}' file.json > file2.json
```

Unfortunately, `jq` doesn't support adding elements to an existing file out of the box.
To do this, you can use [`sponge`](https://linux.die.net/man/1/sponge):

```shell
# brew install moreutils  # If necessary.
jq '. + {"name": "Francis"}' file.json | sponge file.json
```

From the user manual:

> **sponge** reads standard input and writes it out to the specified file. Unlike a shell redirect,
> sponge soaks up all its input before opening the output file.
> This allows constructing pipelines that read from and write to the same file.
>
> If no output file is specified, sponge outputs to stdout.
