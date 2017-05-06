#!/usr/bin/env bash

# Exit if atom isn't installed
if ! type apm >/dev/null 2>&1; then
  >&2 echo "ERROR: Atom CLI tools must be installed before running this script."
  exit 1
fi

# Install Vim Mode Plugins
apm install vim-mode-plus && apm install vim-mode-plus-ex-mode

# Linters
apm install linter
apm install linter-ui-default
apm install linter-ruby
apm install linter-erb
apm install linter-js-standard
apm install linter-write-good

# Visual Changes
apm install spacegray-dark-ui
apm install trailing-spaces
apm install ruby-block
apm install minimap
apm install pigments
apm install minimap-pigments

# React Support
apm install language-babel
apm install language-javascript-jsx
apm install react-snippets

# Markdown Support
apm install language-markdown
apm install markdown-pdf

# Misc
apm install project-manager
apm install emmet
apm install rails-snippets

# Copy over atom config
cp .atom_config ~/.atom/config.cson

