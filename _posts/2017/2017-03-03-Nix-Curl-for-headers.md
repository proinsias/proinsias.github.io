---
layout: single
title: 'Nix: Curling For Headers'
excerpt: Using the head flag for curl
date: 2017-03-03
last_modified_at: 2022-11-16
categories: til
tags:
    - nix
    - til
---

If you want to inspect the headers of a response from some endpoint, look no
further than a quick `curl` command. By including the `-I`/`--head` flag, `curl` will
return just the headers.

For example, if you are developing a web app that is being locally served at
`localhost:3000` and you'd like to see what the headers look like for a
particular URL, you might try something like the following command:

```bash
curl -I localhost:3000/posts
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
