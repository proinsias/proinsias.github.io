---
layout: single
title: 'Homebrew: Switch Versions of a Brew Formula'
excerpt: Pick between installed versions
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - homebrew
    - til
---

If you've installed a couple versions of a program via brew and you'd like
to switch from the currently linked version to the other installed version,
you can use the `switch` command. For instance, if you are on version
`1.8.2` of `phantomjs` and you'd like to switch to `1.9.0`, you can simply
invoke:

```bash
brew switch phantomjs 1.9.0
```

More generically:

```bash
brew switch <formula> <version>
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
