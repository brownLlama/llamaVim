# Insatlling autosuggestions and syntax highlight for zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Downloading neovim app image
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
mkdir -p ~/bin
mv ~/nvim.appimage ~/bin/nvim


# Download and config llamaVim
mkdir .config
cd .config
mkdir nvim
cd nvim
git clone https://github.com/brownLlama/llamaVim.git
mv llamaVim/* ./
rm -rf llamaVim README.md nvim.sh ohmyzsh.sh
cd
rm nvim.sh ohmyzsh.sh

# Alias
# Sudo for nvim
echo "alias nvim='sudo -E /home/linuxbrew/.linuxbrew/bin/nvim'" >> ~/.zshrc
echo "plugins=(zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc
echo "alias c=clear" >> ~/.zshrc
echo "function take {
  mkdir -p $1
  cd $1
}" >> ~/.zshrc
echo "export PATH='$HOME/bin:$PATH'" >> ~/.zshrc
echo "source $ZSH/oh-my-zsh.sh" >> ~/.zshrc
