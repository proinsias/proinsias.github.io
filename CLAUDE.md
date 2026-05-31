# proinsias.github.io

Jekyll-based personal website hosted on GitHub Pages.

## Build & Preview

- Always use `bundle exec` prefix: `bundle exec jekyll serve`,
  `bundle exec jekyll build`
- Validate changes with `bundle exec jekyll build` — there is no test suite
- Commit `Gemfile.lock` always (same rule as `poetry.lock`)

## Pre-commit Hooks

- **YAML files must use double quotes** — `double-quote-string-fixer` enforces
  this; using `'single quotes'` triggers an auto-fix commit cycle
- **Commit title max length is 50 characters** — gitlint enforces this, stricter
  than the default
- **`actionlint` + `check-github-workflows`** run on any
  `.github/workflows/*.yml` change — lint before committing
- **`yaml-update-last-modified-date`** auto-modifies `last_modified_at` in post
  front matter — expect to re-stage after editing posts
- **`lychee` link checker** uses `.lycheecache`; slow on first run when adding
  new external links
- `shellcheck` requires Docker Desktop for `.sh` changes

## GitHub Actions

- All workflows restrict execution to the `proinsias` user via
  `github.event.pull_request.user.login == 'proinsias'` — preserve these guards,
  never weaken them
