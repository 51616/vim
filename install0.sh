#!/bin/bash
#sh -c "$(curl -fsSL https://raw.githubusercontent.com/supasorn/vim/master/install0.sh)

sudo apt install software-properties-common -y
sudo add-apt-repository ppa:x4121/ripgrep
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt install neovim vim zsh tmux curl ripgrep htop sshfs -y 

#git clone https://github.com/supasorn/vim.git ~/.vim
#wget https://raw.githubusercontent.com/marciomazza/vim-brogrammer-theme/master/colors/brogrammer.vim ~/.vim/colors/brogrammer.vim

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh) --unattended"
sh ~/.vim/install.sh

#sudo mkdir /usr/share/fonts/truetype/Meslo
#sudo mv Meslo/*.ttf /usr/share/fonts/truetype/Meslo
#sudo fc-cache -fv

git clone https://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
rm ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
cp ~/.vim/zsh-syntax-highlighting.zsh ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# too agressive
# sudo update-alternatives --install /usr/bin/python python /usr/bin/python3 10
chsh -s /usr/bin/zsh
# download 10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
zsh
