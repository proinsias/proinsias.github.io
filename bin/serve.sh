#!/usr/bin/env bash

set -o errexit    # Exit on error. Append || true if you expect an error.
set -o errtrace   # Exit on error inside any functions or subshells.
set -o noclobber  # Don't allow overwriting files.
set -o nounset    # Don't allow use of undefined vars. Use ${VAR:-} to use an undefined VAR.
set -o pipefail   # Produce a failure return code if any pipeline command errors.
shopt -s failglob # Cause globs that don't get expanded to cause errors.
shopt -s globstar # 2> /dev/null  # Match all files and zero or more sub-directories.
set -o xtrace     # Echo commands as they are executed.

bundle install

bundle exec jekyll serve \
    --drafts \
    --future \
    --incremental \
    --unpublished \
    --watch

echo ""
echo "To fix a warning about 'No GitHub API authentication',"
echo "make sure to set the JEKYLL_GITHUB_TOKEN environment variable."
# https://github.com/github/pages-gem/issues/399#issuecomment-361091215
