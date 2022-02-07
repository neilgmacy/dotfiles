#!/bin/sh

# check dotfiles path was supplied

if [ $# -ne 1 ];then
  echo "Please pass the path of the dotfiles directory, e.g. /Users/you/dotfiles"
  exit 1
fi

DOTFILES_PATH=$1

# install Xcode command line tools
xcode-select --install

# install Homebrew if not already present
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Homebrew packages and other apps
brew bundle

# simlink dotfiles
ln -s $DOTFILES_PATH/git/.gitconfig ~/.gitconfig
ln -s $DOTFILES_PATH/git/.gitignore_global ~/.gitignore_global

ln -s $DOTFILES_PATH/vim/.vimrc ~/.vimrc

ln -s $DOTFILES_PATH/zsh/.zshrc ~/.zshrc

# set preferred macOS default settings
$DOTFILES_PATH/macOS/set_defaults.sh
