---
layout: single
title: "Git: Using 1password, gpg and git for seamless commit signing on linux"
date: 2022-05-19
last_modified_at: 2026-07-30 16:52:22
excerpt: Make your tools work for you!
categories:
    - til
tags:
    - 1password
    - op
    - gpg
    - git
    - github
---

We can combine 1password, gpg and git to enable seamless commit signing on linux
as follows:

List your git key:

```bash
> gpg --list-secret-keys --keyid-format=long
/home/baptiste/.gnupg/pubring.kbx
---------------------------------
sec   rsa4096/0052A8D354A5C655 2022-02-09 [SC]
9BA03414AB56590B6DB5369F0052A8D354A5C655
uid                 [ultimate] Baptiste Maingret (Home Desktop-WSL2) <baptiste.maingret@gmail.com>
ssb   rsa4096/A5B8C64E8929B475 2022-02-09 [E]
```

Look at the `sec` line and note the GPG key ID: `0052A8D354A5C655`.

Tell git which key to use:

```bash
> git config --global user.signingkey 0052A8D354A5C655
```

Tell git to sign every commit of every repository:

```bash
> git config --global commit.gpgsign true
```

We will make use of `gpg-preset-passphrase` on linux to cache our passphrase for
our key. For that we need to make sure gpg-agent allows it.

```bash
> echo "allow-preset-passphrase" >> ~/.gnupg/gpg-agent.conf
```

I will assume you have a 1Password entry storing your GPG key passphrase, with
the name "GPG passphrase":

```bash
> op item get "GPG passphrase" --format json | jq ".id"
"vmgevmdnbbuui3evhksdftjhju"
```

List our keys and their key grips:

```bash
> gpg --list-secret-keys --with-keygrip
/home/baptiste/.gnupg/pubring.kbx
---------------------------------
sec   rsa4096 2022-02-09 [SC]
9BA03414AB56590B6DB5369F0052A8D354A5C655
Keygrip = 80160C5055DA07978E939C0575A4E8DA0B1ECF27
uid           [ultimate] Baptiste Maingret (Home Desktop-WSL2) <baptiste.maingret@gmail.com>
ssb   rsa4096 2022-02-09 [E]
Keygrip = C04ACB8C33AAA68943194D7D1A56954BF76B5C2C
Look at the sec block and at the Keygrip entry: 80160C5055DA07978E939C0575A4E8DA0B1ECF27.
```

Tell 1Password to retrieve the password and pass it directly to
`gpg-preset-passphrase` on linux specifying our key grip. Note that
`gpg-preset-passphrase` will read stdin by default.

```bash
# On linux
op item get vmgevmdnbbuui3evhksdftjhju --fields password | gpg-preset-passphrase --preset 80160C5055DA07978E939C0575A4E8DA0B1ECF27
```

If you weren't logged in 1Password, you will be asked to input your password.

**Update:** the commands above use the 1Password CLI v2 noun-verb syntax
(`op item get ...`). The CLI was restructured from `op get item ...` to
`op item get ...` in v2 (released September 2022); if you're still on v1 you'll
need the old syntax instead. Separately, 1Password has since added native
commit-signing support (SSH-key-based, and later GPG-based) directly into its
desktop app and git integration, which may cover this use case without the
manual `gpg-agent` + `gpg-preset-passphrase` workaround described here — worth
checking the current
[1Password documentation](https://developer.1password.com/docs/ssh/git-commit-signing/)
before setting this up from scratch.

Via
[bmaingret.github.io](https://bmaingret.github.io/blog/2022-02-15-1Password-gpg-git-seamless-commits-signing).
