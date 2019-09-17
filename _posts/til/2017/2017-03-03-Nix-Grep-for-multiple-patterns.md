---
layout: single
title: "(TIL) Nix: Grep For Multiple Patterns"
date: 2017-03-03 05:34
modified: 2017-03-03 05:34
categories: til
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
