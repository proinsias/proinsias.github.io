FROM gitpod/workspace-full

USER gitpod

RUN brew install shellcheck

RUN npm install --global bash-language-server
