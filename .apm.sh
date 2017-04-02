#!/usr/bin/env bash

# Exit if atom isn't installed
if ! type apm >/dev/null 2>&1; then
  >&2 echo "ERROR: Atom CLI tools must be installed before running this script."
  exit 1
fi

# Install Vim Mode Plugins
apm install vim-mode-plus && apm install vim-mode-plus-ex-mode

# Llinters
apm install linter
apm install linter-ui-default
apm install linter-ruby
apm install linter-erb
apm install linter-js-standard

# Visual Changes
apm install spacegray-dark-ui
apm install trailing-spaces
apm install minimap

# Markdown Support
apm install language-markdown
apm install markdown-pdf

# Misc
apm install project-manager
apm install emmet

# Copy over atom config
cp .atom_config ~/.atom/config.cson

