# apt Update
sudo apt update

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Insatlling autosuggestions and syntax highlight
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
source ~/.zshrc

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

sudo apt-get install build-essential
brew install gcc

# Install neovim
brew install neovim

# Install git 
brew install git

# Install npm
brew install node

# Make required Directories and download settings for neovim
mkdir .config
cd .config
mkdir nvim
cd nvim
git clone https://github.com/brownLlama/llamaVim.git
mv llamaVim/* ./
rm -rf llamaVim README.md prep.sh
cd
rm -rf prep.sh

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
source ~/.zshrc
