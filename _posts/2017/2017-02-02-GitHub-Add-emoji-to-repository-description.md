---

layout: single
title: "GitHub: Add Emoji To GitHub Repository Description"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
tags:

- git
- github
- til

---

# Add Emoji To GitHub Repository Description

GitHub restricts the set of unicode characters that can appear in the
description field of a repository to anything up to `0xffff`. Most emoji
have unicode values above this. This means you will have limited success
adding emoji via your system's emoji keyboard.

Fortunately, GitHub allows you to add any recognized emoji to a repository
description with its specialized emoji syntax (e.g. `:memo:`). You may have
used this syntax in other parts of GitHub such as the issue tracker.

If you add an emoji like this:

![memo-text](http://i.imgur.com/Tty7Cl2.png)

it will show up like so:

![memo-emoji](http://i.imgur.com/yxRwmkW.png)

Check out this [Emoji Cheat Sheet](https://www.webfx.com/tools/emoji-cheat-sheet/) for
the names of all recognized emojis.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
