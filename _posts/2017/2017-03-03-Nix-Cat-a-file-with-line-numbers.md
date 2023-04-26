---
layout: single
title: 'Nix: Cat A File With Line Numbers'
excerpt: Using the number option
date: 2017-03-03
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - nix
    - til
---

You can quickly view a file using `cat`

```bash
$ cat Gemfile
source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.0'
# Use postgresql as the database for Active Record
gem 'pg'
```

With the `-n` or `--number` flag you can view that file with line numbers

```bash
$ cat -n Gemfile
 1  source 'https://rubygems.org'
 2
 3
 4  # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
 5  gem 'rails', '4.2.0'
 6  # Use postgresql as the database for Active Record
 7  gem 'pg'
```

Via [jbranchaud/til](https://github.com/jbranchaud/til).
