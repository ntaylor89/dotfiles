#!/usr/bin/env bash

# This is a script to help setup my personal dev environment
# At this point, it has never been run, and serves merely as
# a walkthrough on what needs to be done.
# Hopefully, the next time I set up a machine, I can fix it up

# Setup folders
cd && mkdir Workspace Playground bin .misc .misc/pretty

# Install Homebrew
if ! which brew; then
  echo "Installing Homebew..."
 yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install zsh
if ! which zsh > /dev/null; then
  echo "Installing Zsh..."
  brew install zsh zsh-completions

  echo "installing Oh-My-Zsh..."
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Get zsh-syntax-highlighting
git clone  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.misc/pretty

# Installing Python
echo "Installing Python..."
brew install python

echo "Installing Powerline..."
pip install --user powerline-status

# Install Powerline Fonts
git clone https://github.com/powerline/fonts.git ~/.misc && ~/.misc/pretty/fonts/install.ssh

# Get Solarized Color Themes
git clone https://github.com/altercation/solarized.git ~/.misc/pretty

# Get Virtualcandy for Python
git clone git://github.com/jeffbuttars/virtualcandy.git ~/.virtualcandy

# Setup Vim
echo "Installing Vim..."
brew install vim
brew install macvim
git clone git@github.com:ntaylor89/vim.git ~/.misc
source ~/.misc/install.sh

# Install Ruby
brew install ruby

# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Install other homebrew packages
source brew-installs

