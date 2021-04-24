FROM gitpod/workspace-full:commit-409e1707b3cbe6752a894893cd6354fc13d7b8f5

USER gitpod

RUN brew install shellcheck

# hadolint ignore=DL3059
RUN npm install --global bash-language-server@v1.17.0
