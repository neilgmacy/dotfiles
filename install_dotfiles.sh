# install Xcode command line tools

xcode-select --install

# install Homebrew if not already present,
# and install from Brewfile

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# simlink dotfiles
ln -s ~/Dev/dotfiles/git/.gitconfig ~/.gitconfig
ln -s ~/Dev/dotfiles/git/.gitignore_global ~/.gitignore_global

ln -s ~/Dev/dotfiles/vim/.vimrc ~/.vimrc

ln -s ~/Dev/dotfiles/zsh/.zshrc ~/.zshrc

# set preferred macOS default settings
./macOS/set_defaults.sh
