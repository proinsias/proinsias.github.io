---

layout: single
title: "GitHub: Link to headers in READMEs"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
categories: til
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
