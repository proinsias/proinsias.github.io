---
layout: single
title: 'Nix: Count the number of fields in a record'
excerpt: Using awk
date: 2021-04-06
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - awk
    - nix
    - til
---

To count the number of fields in a delimiter-separated text file, use `awk`:

```bash
>>> cat temp.txt
|28-07-1997|IF_LEG_DCCT|TOV JV sdfsdfdsfdsfdsCLOSED* KIEV|381015280
>>> awk -F '|' '{print NF}' temp.txt
5
```

`NF` is a variable with the number of fields in the current record.
The `-F` option is used to specify the file delimiter, and the default delimiter is a space.

Via [unix.com](https://www.unix.com/shell-programming-and-scripting/48535-how-count-number-fields-record.html).
