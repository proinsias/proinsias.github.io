---
layout: single
title: "Nix: Grep For Multiple Patterns"
excerpt: Using the e flag
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

You can use the `-e` flag with the `grep` command to search for a pattern.
Additionally, you can use multiple `-e` flags to search for multiple
patterns. For instance, if you want to search for occurrences of `ruby` and
`clojure` in a `README.md` file, use the following command:

```bash
grep -e ruby -e clojure README.md
```

See `man grep` for more details.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
