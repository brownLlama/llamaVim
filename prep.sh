# apt Update
sudo apt update

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# Change snau_maharjan to your user_name
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/sanu_maharjan/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
# Homebrew essentials
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

###########################################################################################################################

# Install zsh and oh-my-zsh
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Insatlling autosuggestions and syntax highlight
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Need to be added with plugins=(git ....)
echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc

# Sudo for nvim
echo "alias nvim='sudo -E /home/linuxbrew/.linuxbrew/bin/nvim'" >> ~/.zshrc
echo "alias c=clear" >> ~/.zshrc
# echo "alias rm=trash" >> ~/.zshrc
# echo "function take {
#   mkdir -p $1
#   cd $1
# }" >> ~/.zshrc

source ~/.zshrc
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/sanu_maharjan/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

cd
rm -rf prep.sh
