#!/bin/bash
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/supasorn/vim/master/install0.sh)
sudo add-apt-repository ppa:x4121/ripgrep
sudo apt-get update
sudo apt install neovim vim zsh tmux curl ripgrep -y
chsh -s /usr/bin/zsh
#git clone https://github.com/supasorn/vim.git ~/.vim
# download 10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
wget https://raw.githubusercontent.com/marciomazza/vim-brogrammer-theme/master/colors/brogrammer.vim ~/.vim/colors/brogrammer.vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended"
sh ~/.vim/install.sh



zsh
