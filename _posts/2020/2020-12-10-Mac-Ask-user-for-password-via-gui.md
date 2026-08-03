---
layout: single
title: "Mac: Ask user for password via GUI"
excerpt: Using Applescript
date: 2020-12-10
last_modified_at: 2026-08-03 14:04:37
categories:
    - til
tags:
    - mac
    - til
---

This function will use AppleScript to present a password entry dialog to make
your scripts a little more user friendly:

```bash
function gui_password {
    if [[ -z $1 ]]; then
        gui_prompt="Password:"
    else
        gui_prompt="$1"
    fi
    PW=$(osascript <<EOF
    tell application "System Events"
        activate
        text returned of (display dialog "${gui_prompt}" default answer "" with hidden answer)
    end tell
EOF
    )

    echo -n "${PW}"
}
```

Via
[awesome-macos-command-line](https://herrbischoff.com/code/me/awesome-macos-command-line).
