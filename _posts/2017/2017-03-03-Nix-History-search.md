---
layout: single
title: 'Nix: Search History'
excerpt: Using control-r
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

Often times there is a very specific command you have entered into your bash
prompt that you need to run again. You don't want to have to type it again
and stepping manually through your history may be suboptimal if you typed it
quite a while ago. Fortunately, there is a simple history search feature
that you can use in this kind of situation.

Hit `Ctrl+r` and then start typing a moderately specific search term. Your
search history will be filtered by that term. Subsequent hitting of
`Ctrl+r` will step forward through that filtered history. Once you find the
command you are looking for, hit enter to execute it.

Via [jbranchaud/til](https://github.com/jbranchaud/til).
