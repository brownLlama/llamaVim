# apt Update
sudo apt update

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/$USER/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential
brew install gcc

# Install zsh
brew install zsh

# ! TODO
# Find a way to change from bash to zsh

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
rm -rf llamaVim README.md
cd
rm -rf prep.sh
