# Dotfiles

All the dotfiles that I interact with on a regular basis. Also included in this README are the various other programs
I use like homebrew, etc. 

## Setup

* Clone repository into `~/Development/dotfiles`

```
git clone git@github.com:smeriwether/dotfiles.git ~/Development/dotfiles
```

* Symlink all files

```
ln -s ~/Development/dotfiles/zshrc ~/.zshrc
ln -s ~/Development/dotfiles/vimrc ~/.vimrc
ln -s ~/Development/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/Development/dotfiles/railsrc ~/.railsrc
ln -s ~/Development/dotfiles/gitconfig ~/.gitconfig
ln -s ~/Development/dotfiles/gitignore ~/.gitignore
ln -s ~/Development/dotfiles/gitattributes ~/.gitattributes
```

* Install necessary plugins

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## Other Program Setup

* Oh My Zsh 

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

* Homebrew

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

```
brew install vim
brew install tmux
brew install rbenv
brew install git
brew install postgresql
brew install trash
brew install rg
```

## Also Install

See [Everyday Mac apps](https://merimerimeri.com/essays/mac-apps/) for other apps to install.

