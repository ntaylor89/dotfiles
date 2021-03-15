#!/usr/bin/env bash

# From https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

# Update this repo
git pull origin master;

# Copy dotfiles over to home directory
# rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
#       --exclude "README.md" --exclude "license" --exculde ".brew.sh" \
#       --exclude ".cask.sh" --exclude ".apm.sh" --exclude ".hpm.sh" --exclude ".atom_config"-avh \
#       --no-perms . ~;

ln -s .zshrc ~/.zshrc
ln -s .pryrc ~/.pryrc
ln -s .editorconfig ~/.editorconfig
ln -s .gitignore ~/.gitignore

# This is a script to help setup my personal dev environment
# This has been _mostly_ tested, but there may be some minor
# issues. Use are your own peril.

# Setup folders
cd && mkdir Workspace Playground bin .misc .misc/pretty

# Install Homebrew
if ! type brew >/dev/null 2>&1; then
  echo "Installing Homebew..."
 yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install zsh
#  echo "installing Oh-My-Zsh..."
brew install zsh
# chsh -s $(which zsh)
 sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
#  brew install zsh-completions
cp alias.zsh ~/.oh-my-zsh/custom/alias.zsh

# Get zsh-syntax-highlighting
# brew install zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .misc/pretty/zsh-syntax-highlighting

# Installing Python
echo "Installing Python..."
brew install python

echo "Installing Powerline..."
pip3 install --user powerline-status

# Install Powerline Fonts
git clone https://github.com/powerline/fonts.git ~/.misc/pretty/powerline-fonts && ~/.misc/pretty/powerline-fonts/install.sh

# Setup Vim
echo "Installing Vim..."
brew install vim
git clone https://github.com/ntaylor89/vim.git ~/.misc/vim
source ~/.misc/vim/install.sh

# Install RVM
brew install gpg2
gpg --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby
source ~/.rvm/scripts/rvm

echo "Done"
