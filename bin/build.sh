#!/usr/bin/env bash

bundle exec jekyll build

bundle exec htmlproofer ./_site \
    --check-html \
    --empty-alt-ignore `# Unsure how to enable alt tags for teaser images` \
    --http-status-ignore 999 `# Ignore 999 errors associated with LinkedIn urls`\
    --url-ignore "#"

# FIXME: --check-favicon - need to add them first!
# FIXME: - overcommit --sign - need to edit .overcommit.yml first.
# FIXME: - overcommit --sign pre-commit
# FIXME: - overcommit --run
