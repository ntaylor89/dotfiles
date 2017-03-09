#!/usr/bin/env bash

# From https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
    --exclude "README.md" --exclude "license" -avh --no-perms . ~;

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
brew install zsh-syntax-highlighting

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
brew install vim --override-system-vi
git clone git@github.com:ntaylor89/vim.git ~/.misc
source ~/.misc/install.sh

# Install RVM
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm


