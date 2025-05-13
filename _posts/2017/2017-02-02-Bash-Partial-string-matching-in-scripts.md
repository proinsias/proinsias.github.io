---
layout: single
title: "Bash: Partial String Matching In Bash Scripts"
excerpt: Using a wildcard
date: 2017-02-02
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - bash
    - nix
    - til
---

To compare two strings in a bash script, you will have a snippet of code
similar to the following:

```bash
if [[ $(pwd) == "/path/to/current/directory" ]]
then
  echo "You are in that directory";
fi
```

You may only want to do a partial string match. For this, you can use the
`*` wildcard symbol.

```bash
if [[ $(pwd) == *"directory"* ]]
then
  echo "You are in that directory";
fi
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
