---
layout: single
title: "GitHub: Link to headers in READMEs"
excerpt: Quick way to generate a table of contents
date: 2017-02-02
last_modified_at: 2023-04-26 13:22:37
categories:
    - til
tags:
    - git
    - github
    - til
---

Anytime you add a header to a markdown file, GitHub attaches an `href` with its
downcased name. 'JavaScript' receives a link to `#javascript`, for instance.

Leverage this by adding a table of contents to your README with links to the
headers further down the document:

```markdown
### Table of Contents

- [Cucumber](#cucumber)
```

This will link to a header containing 'Cucumber'.

h/t Josh Branchaud

Via [jwworth/til](https://github.com/jwworth/til).
