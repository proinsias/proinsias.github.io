---
layout: single
title: "(TIL) Mac: Use Touch ID to Authenticate Sudo Commands"
date: 2020-03-04 10:00
modified: 2020-03-04 10:00
categories: til
tags:
  - mac
  - til
  - sudo
---

On newer MacBook Pros, you can add Touch ID as an acceptable method of authenticating sudo commands. This is done by editing the `/etc/pam.d/sudo` file:

```bash
$ cat /etc/pam.d/sudo
# sudo: auth account password session
auth       sufficient     pam_smartcard.so
auth       required       pam_opendirectory.so
account    required       pam_permit.so
password   required       pam_deny.so
session    required       pam_permit.so

$ sudo edit /etc/pam.d/sudo
```

Update the file to include the following line after the `# sudo ...` line:

```bash
auth       sufficient     pam_tid.so
```

Via [maketecheasier.com](https://www.maketecheasier.com/use-touch-id-authenticate-sudo-commands-mac/).
