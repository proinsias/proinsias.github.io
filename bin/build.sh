#!/usr/bin/env bash

set -o errexit  # Exit on error. Append || true if you expect an error.
set -o errtrace  # Exit on error inside any functions or subshells.
set -o noclobber  # Don't allow overwriting files.
set -o nounset  # Don't allow use of undefined vars. Use ${VAR:-} to use an undefined VAR.
set -o pipefail  # Produce a failure return code if any pipeline command errors.
shopt -s failglob  # Cause globs that don't get expanded to cause errors.
shopt -s globstar # 2> /dev/null  # Match all files and zero or more sub-directories.
set -o xtrace  # Echo commands as they are executed.

bundle exec jekyll build

# Render posts in the _drafts folder, with a future date, and those marked as unpublished.
# bundle exec jekyll build --drafts --future --unpublished

# Keep in sync with .github/workflows/cronjobs.yml and .github/workflows/pull-requests-and-pushes.yml
bundle exec htmlproofer ./_site \
    --enforce-https false \
    --ignore-empty-alt true `# Unsure how to enable alt tags for teaser images` \
    --ignore-status-codes 401,403,429 \
    --only-4xx \
    --typhoeus '{ "connecttimeout": 30, "timeout": 30 }' \
    --ignore-urls "#,/archive.org/,/doi.org/,/enkipro.com/,/help.github.com/,/medium.com/,/proinsias.github.io/,/towardsdatascience.com/,/twitter.com/"
