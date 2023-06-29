# Insatlling autosuggestions and syntax highlight for zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/sanu_maharjan/.zprofile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc

# Install neovim
brew install neovim node

# Download and config llamaVim
mkdir .config
cd .config
mkdir nvim
cd nvim
git clone https://github.com/brownLlama/llamaVim.git
mv llamaVim/* ./
rm -rf llamaVim README.md nvim.sh ohmyzsh.sh
cd

# Alias
# Sudo for nvim
echo "alias nvim='sudo -E /home/linuxbrew/.linuxbrew/bin/nvim'" >> ~/.zshrc
# Need to be added with plugins=(git ....)
echo "plugins=(zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc
echo "alias c=clear" >> ~/.zshrc
echo "function take {
  mkdir -p $1
  cd $1
}" >> ~/.zshrc
