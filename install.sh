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
