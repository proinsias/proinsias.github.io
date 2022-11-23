---
layout: single
title: 'Nix: Install Packages From A Specific Repository'
excerpt: Using yum or apt-get
date: 2017-03-03
modified: 2022-11-23
categories: til
tags:
    - nix
    - til
---

Here's how to install a package from a specific repository:

```bash
## Yum Commands

# List repos
sudo yum repolist all
# Install the nagios package from the EPEL repository.
sudo yum --enablerepo=epel install nagios

## Apt Commands

# Install the lxd package from the xenial-backports repository.
sudo apt-get -t xenial-backports install lxd
```

Via [ostechnix.com](https://www.ostechnix.com/install-packages-specific-repository-linux/).
