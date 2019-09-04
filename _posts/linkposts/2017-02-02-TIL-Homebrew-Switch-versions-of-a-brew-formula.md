---
layout: single
title: "(TIL) Homebrew: Switch Versions of a Brew Formula"
date: 2017-02-02 10:04
modified: 2017-02-02 10:04
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
