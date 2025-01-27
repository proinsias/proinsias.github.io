---
layout: single
title: "CompSci: GUIDs are not strings"
excerpt: The string representation of a GUID should not be relevant to a program
date: 2017-11-03 10:21
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - computer-science
    - til
---

> GUIDs are not strings. They are numbers. We render them as strings for readability. We
> should not process them as strings. We should not pass them around as strings. The string
> representation of a GUID should not be relevant to a program.

Via [The Daily WTF](http://thedailywtf.com/articles/identifying-the-globally-unique).
