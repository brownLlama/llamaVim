# llamaVim

## Install zsh and oh-my-zsh
Create two files on your VM `ohmyzsh.sh` and `nvim.sh`

```bash
touch ohmyzsh.sh nvim.sh
```

Use vim to edit the file.
```bash
vim ohmyzsh.sh
```

Copy all content from `ohmyzsh.sh` from here (GitHub) and paste on the VM `ohmyzsh.sh` and quit by pressing `:wq`. Do the same with `nvim.sh`.

```bash
vim nvim.sh
```

Now make them executable and run them.
```bash
chmod +x ohmyzsh.sh nvim.sh
./ohmyzsh.sh
```

```bash
./nvim.sh
```

Now, vim to .zshrc file and move `SOURCE $...`line to end of the file.
```bash
vim ~/.zshrc
```

save and quit.

Run one last command to source .zshrc file

```bash
source ~/.zshrc
```

And you are done!
