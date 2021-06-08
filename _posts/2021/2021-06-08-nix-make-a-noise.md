---
layout: single
title: "Nix: Make a noise!"
date: 2021-06-08 17:54
modified: 2021-06-08 17:54
categories: til
tags:
  - nix
  - til
---

If you're writing a script, and want it to make a noise to notify you when it's done, look no further than [SoX](https://sox.sourceforge.io/):

```shell
brew install sox

# Play a 400 Hz sound for 1 second.
play --null --no-show-progress synth 1 sine 400
```

Via [Khuyen Tran](https://towardsdatascience.com/how-to-get-a-notification-when-your-training-is-complete-with-python-2d39679d5f0f).
