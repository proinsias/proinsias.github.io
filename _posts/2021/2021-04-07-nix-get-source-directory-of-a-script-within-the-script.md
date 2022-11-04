---
layout: single
title: 'Bash: Get source directory of a script within the script'
excerpt: Works no matter where the script is being called from
date: 2021-04-07 12:24
modified: 2022-11-04 12:24
categories: til
tags:
    - bash
    - nix
    - til
---

```bash
#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
```

> is a useful one-liner which will give you the full directory name of the script no matter where it is being called from.
>
> It will work as long as the last component of the path used to find the script is not a symlink (directory links are OK).
> If you also want to resolve any links to the script itself, you need a multi-line solution:

```bash
#!/bin/bash

SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  # If $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located.
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
```

Via [SO](https://web.archive.org/web/20220818174206/https://stackoverflow.com/questions/59895/how-do-i-get-the-directory-where-a-bash-script-is-located-from-within-the-script/246128).
