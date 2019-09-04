---
layout: single
title: "(TIL) CompSci: GUIDs are not strings"
date: 2017-11-03 10:21
modified: 2017-11-03 10:21
---

> GUIDs are not strings. They are numbers. We render them as strings for readability. We
should not process them as strings. We should not pass them around as strings. The string
representation of a GUID should not be relevant to a program.

Via [The Daily WTF](http://thedailywtf.com/articles/identifying-the-globally-unique).
