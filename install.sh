#!/usr/bin/env sh

ln -sf ~/.vim/vimrc ~/.vimrc
ln -sf ~/.vim/gvimrc ~/.gvimrc
ln -sf ~/.vim/tmux.conf ~/.tmux.conf
ln -sf ~/.vim/tmux_script.sh ~/tmux_script.sh
ln -sf ~/.vim/tmux_script_2.sh ~/tmux_script_2.sh
ln -sf ~/.vim/.bash_aliases ~/.bash_aliases
ln -sf ~/.vim/zshrc ~/.zshrc
ln -sf ~/.vim/p10k.zsh ~/.p10k.zsh

mkdir -p ~/.config/nvim
cp ~/.vim/init.vim ~/.config/nvim/init.vim

vim +PlugInstall +qall

cp ~/.vim/key-bindings.zsh ~/.fzf/shell/ 

cd ~/.vim/plugged/FuzzyFinder
curl -Lo fix-top-left-focus-bug.patch https://github.com/vim-scripts/FuzzyFinder/pull/2.diff
patch -p1 <fix-top-left-focus-bug.patch
