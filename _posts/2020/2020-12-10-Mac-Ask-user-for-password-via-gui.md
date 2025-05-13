---
layout: single
title: "Mac: Ask user for password via GUI"
excerpt: Using Applescript
date: 2020-12-10
last_modified_at: 2025-05-13 00:33:19
categories:
    - til
tags:
    - mac
    - til
---

This function will use AppleScript to present a password entry dialog
to make your scripts a little more user friendly:

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
[awesome-macos-command-line](https://git.herrbischoff.com/awesome-macos-command-line/about/functions.md#ask-user-for-password).
