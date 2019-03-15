#!/usr/bin/env sh

ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/gvimrc ~/.gvimrc
ln -sf ~/.vim/tmux.conf ~/.tmux.conf
ln -sf ~/.vim/zshrc ~/.zshrc

mkdir -p ~/.config/nvim
cp ~/.vim/init.vim ~/.config/nvim/init.vim

cd ~/.vim/plugged/FuzzyFinder
curl -Lo fix-top-left-focus-bug.patch https://github.com/vim-scripts/FuzzyFinder/pull/2.diff
patch -p1 <fix-top-left-focus-bug.patch

vim +PlugInstall +qall

mv ~/.vim/key-bindings.zsh ~/.fzf/shell/ 
