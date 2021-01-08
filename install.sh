echo "Install oh-my-zsh? [y,N]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
  exec 'sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"'
else
  echo "Not installing oh-my-zsh"
fi

echo "Install homebrew? [y,N]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
  exec '/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"'
else
  echo "Not installing homebrew"
fi

echo "Install nvm? [y,N]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
  exec 'curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.9/install.sh | bash'
else
  echo "Not installing nvm"
fi

echo "Symlink dotfiles? [y,N]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
  if [ ! -n "$DOTFILES" ]; then
    export $DOTFILES = "$HOME/.dotfiles"
  fi

  rm -f ~/.gitconfig
  rm -f ~/.gitignore
  rm -rf ~/.vim
  rm -f ~/.vimrc
  rm -f ~/.tmux.conf
  rm -f ~/.zshrc
  rm -f ~/.railsrc

  ln -s $DOTFILES/gitconfig ~/.gitconfig
  ln -s $DOTFILES/gitignore ~/.gitignore
  ln -s $DOTFILES/vim ~/.vim
  ln -s $DOTFILES/vimrc ~/.vimrc
  ln -s $DOTFILES/tmux.conf ~/.tmux.conf
  ln -s $DOTFILES/zshrc ~/.zshrc
  ln -s $DOTFILES/railsrc ~/.railsrc
else
  echo "Not symlinking dotfiles"
fi

echo "Install homebrew packages? [y,N]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
  exec "brew install vim"
  exec "brew install tmux"
  exec "brew install rbenv"
  exec "brew install reattach-to-user-namespace"
  exec "brew install git"
  exec "brew install yarn --without-node"
  exec "brew install tldr"
  exec "brew install tree"
  exec "brew install postgresql"
  exec "brew install tree"
  exec "brew install trash"
else
  echo "Not installing homebrew packages"
fi

echo "Install tmux plugin manager (tmp)? [y,N]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
  exec "git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm"
else
  echo "Not installing homebrew packages"
fi

echo "Install vim plugin manager (Vundle)? [y,N]"
read input
if [[ $input == "Y" || $input == "y" ]]; then
  exec "git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim"
else
  echo "Not installing homebrew packages"
fi
