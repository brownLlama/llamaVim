# llamaVim

## Setup Neovim
Create prep_neovim.sh

```bash
vim prep_neovim.sh
```
Copy all content from `prep_neovim.sh` from here to VM and quit by pressing `:wq` paste and and run

```bash
chmod +x prep_neovim.sh
./prep_neovim.sh
```

## Install zsh and oh-my-zsh
```bash
sudo apt install zsh
```

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Customize oh-my-zsh
Similar to setting up neovim, create prep_ohmyzsh.sh

```bash
vim prep_ohmyzsh.sh
```
Copy all content from `prep_ohmyzsh.sh` from here to VM and quit by pressing `:wq` paste and and run

```bash
chmod +x prep_ohmyzsh.sh
./prep_ohmyzsh.sh
```

And you are done!
