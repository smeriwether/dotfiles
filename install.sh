rm ~/.gitconfig
rm ~/.gitignore
rm -rf ~/.vim
rm ~/.vimrc
rm ~/.tmux.conf
rm ~/.zshrc
rm ~/.railrc

ln -s $DOTFILES/gitconfig ~/.gitconfig
ln -s $DOTFILES/gitignore ~/.gitignore
ln -s $DOTFILES/vim ~/.vim
ln -s $DOTFILES/vimrc ~/.vimrc
ln -s $DOTFILES/tmux.conf ~/.tmux.conf
ln -s $DOTFILES/zshrc ~/.zshrc
ln -s $DOTFILES/railsrc ~/.railsrc
