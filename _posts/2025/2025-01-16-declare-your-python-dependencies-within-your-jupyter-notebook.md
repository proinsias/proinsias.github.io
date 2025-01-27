---
layout: single
title: "Declare your python dependencies within your Jupyter notebook"
excerpt: Reproducible workflows are simplified with tools like Nix for shell scripts and juv for Jupyter notebooks, enabling dependency declarations directly within scripts or notebooks for seamless sharing.
date: 2025-01-16 19:42
last_modified_at: 2025-01-16 19:42
categories:
    - posts
tags:
    - reproducible
    - jupyter
    - dependency
    - nix
    - python
---

I recently came across the idea of [Reproducible interpreted shell scripts](https://nix.dev/tutorials/first-steps/reproducible-scripts.html),
where your shell script's dependencies are declared within the script so the users of your script don't have to worry about pre-installing them.
This uses the Nix package manager.

Well, Eric Ma just [introduced me](https://www.linkedin.com/feed/update/urn:li:activity:7270044663997169664/)
to a similar solution for Jupyter notebooks, using the `juv` toolkit to declare Python dependencies within the notebook.
Really simplifies sharing these analyses!
