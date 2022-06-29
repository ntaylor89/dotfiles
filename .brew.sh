#!/usr/bin/env bash

# Adapted from: https://github.com/mathiasbynens/dotfiles/edit/master/brew.sh

if ! type brew >/dev/null 2>&1; then
  >&2 echo "ERROR: Homebrew must be installed before running this script."
  exit 1
fi

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew. Upgrade any already-installed formulae.
brew update && brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`
brew install gnu-sed

# Install Latest Bash.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
# sudo echo "/usr/local/bin/bash" >> /etc/shells

# Install other useful binaries
brew install dark-mode

# brew install lua
brew install node
brew install ruby

brew install ack
brew install gawk
brew install jq
# brew install openssl
brew install p7zip
# brew install pigz
# brew install pv
# brew install rhino
brew install rename
# brew install speedtest_cli
# brew install ssh-copy-id
brew install tmux
brew install tree
brew install unrar
# brew install webkit2png
# brew install xz
# brew install vim
brew install wget
# brew install zopfli

brew install git
brew install hub
brew install gh
brew tap heroku/brew && brew install heroku

brew install ffmpeg
brew install imagemagick

# Remove outdated versions from the cellar
brew cleanup
