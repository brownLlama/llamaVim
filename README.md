# llamaVim

## Install zsh and oh-my-zsh
Create two files on your VM `prep_ohmyzsh.sh` and `prep_neovim.sh`

```bash
touch prep_ohmyzsh.sh prep_neovim.sh
```
Copy all content from `prep_ohmyzsh.sh` from here (GitHub) and paste on the VM `prep_ohmyzsh.sh` and quit by pressing `:wq`. Do the same with `prep_neovim.sh`.

Now make them executable and run them.
```bash
chmod +x prep_ohmyzsh.sh prep_neovim.sh
./prep_ohmyzsh.sh
```

```bash
./prep_neovim.sh
```

And you are done!
