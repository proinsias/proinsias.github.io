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

bundle exec htmlproofer ./_site \
    --check-favicon \
    --check-html \
    --empty-alt-ignore `# Unsure how to enable alt tags for teaser images` \
    --internal-domains proinsias.github.io `# Treat urls with this domain as internal urls` \
    --only-4xx \
    --typhoeus-config '{ "connecttimeout": 0, "timeout": 0 }' `# Reset to defaults. Rely on Travis timeouts` \
    --url-ignore "#,/archive.org/,/doi.org/,/enkipro.com/,/help.github.com/,/medium.com/,/towardsdatascience.com/,/twitter.com/"
