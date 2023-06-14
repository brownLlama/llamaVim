# llamaVim

## Setup for cloud VM (GCP)

After creating the instance in VM, SSH into the instance and then install zsh and oh-my-zsh
```sudo apt update
sudo apt install zsh```
First step is to install zsh and oh-my-zsh

To config llamaVim in VMs, all you have to do is copy and paste the content of `prep.sh` and then make is executable using

`chmod +x prep.sh`

and run the it, using and then make is executable using

`./prep.sh`

This should install

- homebrew
- zsh
- neovim
- git

and then customize neovim to superior llamaVim
