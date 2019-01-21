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
brew cask install atom
brew cask install docker
brew cask install filezilla
brew cask install github
brew cask install google-chrome
brew cask install hyper
brew cask install insomnia
brew cask install keka
brew cask install macdown
brew cask install postgres && sudo mkdir -p /etc/paths.d && \
  echo /Applications/Postgres.app/Contents/Versions/latest/bin \
  | sudo tee /etc/paths.d/postgresapp
brew cask install textmate
brew cask install virtualbox
brew cask install vagrant
brew cask install wireshark

# Misc
brew cask install alfred
brew cask install dropbox
brew cask install google-backup-and-sync
brew cask install openemu
brew cask install spotify
brew cask install steam
brew cask install vlc

brew cleanup

