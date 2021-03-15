#!/usr/bin/env bash

if ! type brew >/dev/null 2>&1; then
  >&2 echo "ERROR: Homebrew must be installed before running this script."
  exit 1
fi

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Development Tools
brew install --cask atom
brew install --cask docker
brew install --cask filezilla
brew install --cask github
brew install --cask google-chrome
brew install --cask hyper
brew install --cask insomnia
brew install --cask handbrake
brew install --cask keka
brew install --cask macdown
brew install --cask now
brew install --cask postgres && sudo mkdir -p /etc/paths.d && \
  echo /Applications/Postgres.app/Contents/Versions/latest/bin \
  | sudo tee /etc/paths.d/postgresapp
brew install --cask redis
brew install --cask textmate
brew install --cask virtualbox
brew install --cask vagrant
brew install --cask wireshark

# Misc
brew install --cask alfred
brew install --cask dropbox
brew install --cask google-backup-and-sync
brew install --cask openemu
brew install --cask notion
brew install --cask spotify
brew install --cask steam
brew install --cask vlc

brew cleanup cask
