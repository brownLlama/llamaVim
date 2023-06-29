# Insatlling autosuggestions and syntax highlight
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Need to be added with plugins=(git ....)
echo "plugins=(git zsh-autosuggestions zsh-syntax-highlighting)" >> ~/.zshrc

# Sudo for nvim
echo "alias nvim='sudo -E /home/linuxbrew/.linuxbrew/bin/nvim'" >> ~/.zshrc
echo "alias c=clear" >> ~/.zshrc

# For MacOS
# echo "alias rm=trash" >> ~/.zshrc
# echo "function take {
#   mkdir -p $1
#   cd $1
# }" >> ~/.zshrc

source ~/.zshrc
