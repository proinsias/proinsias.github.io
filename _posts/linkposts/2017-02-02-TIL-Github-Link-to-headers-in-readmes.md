---
layout: single
title: "(TIL) Github: Link to headers in READMEs"
date: 2017-02-02 20:57
modified: 2017-02-02 20:57
---

Anytime you add a header to a markdown file, Github attaches an `href` with its
downcased name. 'JavaScript'  receives a link to `#javascript`, for instance.

Leverage this by adding a table of contents to your README with links to the
headers further down the document:

```markdown
### Table of Contents

- [Cucumber](#cucumber)
```

This will link to a header containing 'Cucumber'.

h/t Josh Branchaud

Via [jwworth/til](https://github.com/jwworth/til).
