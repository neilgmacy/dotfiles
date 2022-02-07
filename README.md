# Dotfiles

My dotfiles for configuring various things on macOS.

Feel free to copy/reuse/improve what you like, and if there's something particularly cool you do that I've missed, please share it with me!

## Setup

There's a setup script called `install_dotfiles.sh`. This script does everything needed to get my Mac set up how I like it:
- Install Xcode command line tools
- Install [Homebrew](https://brew.sh)
- Install [oh-my-zsh](https://ohmyz.sh), a tool to extend the zsh shell
- Install packages and applications using `Brewfile`
- Simlink the dotfiles in this repo, so that the working version of the file is always in this repo
- Set my preferred Mac settings from `./macOS/set_defaults.sh`
