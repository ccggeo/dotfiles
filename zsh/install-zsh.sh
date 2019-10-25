sudo apt-get update -y && sudo apt-get install -y  zsh && git
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
echo "exec zsh" >> ~/.bashrc
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
cp zshrc ~/.zshrc
