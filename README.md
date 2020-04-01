# Dotfiles

All the dotfiles that I interact with on a regular basis. Also included in this README are the various other programs
I use like homebrew, etc. 

## Setup

* Clone repository into `~/.dotfiles`

```
git clone git@github.com:smeriwether/dotfiles.git ~/.dotfiles
```

* Symlink all files

```
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/vim ~/.vim
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/railsrc ~/.railsrc
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/gitignore ~/.gitignore
```

* Install necessary plugins

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## Other Program Setup

* Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew install vim
brew install tmux
brew install rbenv
brew install reattach-to-user-namespace
brew install git
brew install yarn --without-node
brew install tldr
brew install tree
brew install postgresql
brew install tree
brew install trash
```

* nvm

```
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.9/install.sh | bash
```

## Also Install

* [Docker](https://docs.docker.com/docker-for-mac/install/)

* [iTerm 2](https://www.iterm2.com/downloads.html)

* [Insomnia](https://insomnia.rest/)

* [Postico](https://eggerapps.at/postico/)

* [TextMate](https://macromates.com)


