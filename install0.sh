#!/bin/bash
sudo apt -y install neovim vim zsh tmux curl
git clone https://github.com/supasorn/vim.git ~/.vim; sh ~/.vim/install.sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
