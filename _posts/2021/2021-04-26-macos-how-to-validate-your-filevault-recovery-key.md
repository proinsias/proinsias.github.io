---
layout: single
title: "MacOS: How to validate your FileVault Recovery Key"
date: 2021-04-26 16:57
modified: 2021-04-26 16:57
categories: til
tags:
  - filevault
  - macos
  - til
---

I'm a big fan of keeping my laptop drive encrypted using macOS' [FileVault](https://support.apple.com/en-us/HT204837).
As part of setting this up, you can set a recovery key in case you find yourself locked out of your Mac,
and are therefore unable to unlock your encrypted drive.

However, an important element of this type of protection is doing a dry run,
so that you can verify you have recorded the recovery key correctly.
The worst time to figure this out is when you need the correct recovery key to avoid losing everything!

Thanks to the folks at
[MacWorld](https://www.macworld.com/article/340731/is-your-macos-filevault-recovery-key-current-heres-how-to-check.html),
I now know how to perform such a dry run from the Terminal:

```bash
sudo fdesetup validaterecovery
```

This will ask for your administrative password and the recovery key,
and then return `true` if you entered the right key, and `false` otherwise.
If you realize you have the wrong recovery key on record,
you should immediately
[reset FileVault](https://www.macworld.com/article/3512016/how-to-cope-with-a-filevault-recovery-key-disappearing-while-you-write-it-down.html).
