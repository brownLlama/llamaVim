# llamaVim

## Setup zsh in GCP Instance

After creating the instance in VM, SSH into the instance and then install zsh and oh-my-zsh

```bash
sudo apt update
sudo apt install zsh
```

Check the path of zsh is installed by running

```bash
which zsh
```

By default, the path of zsh should be `/usr/local/bin/zsh`. Copy this path and paste it into `/etc/shells/`

```bash
sudo vim /etc/shells
```

Now, to make zsh your default shell, open `./bashrc` file by running:

```bash
vim ~/.bashrc
```

and at the end of the file, paste `exec <path_of_zsh>` at the end of the line.

You can just quit the terminal and run again; the configuration steps should appear.

## Setup llamaVim

To config llamaVim in VMs, all you have to do is copy and paste the content of `prep.sh` and then make it executable using

`chmod +x prep.sh`

and run it

`./prep.sh`

This should install

- zsh
- homebrew
- neovim
- git

and then customize neovim to superior llamaVim

## Alias Nvim
I would like to always goto nvim in sudo mode I put an alias for this command, to do so, we have to write an alias in `.zshrc` file

```bash
vim ~/.zshrc
```

Scroll to the end of the file and add following line

```bash
alias nvim='sudo /home/linuxbrew/.linuxbrew/bin/nvim'
```

Write and quit and reload the zsh config by:

```bash
source ~/.zshrc
```
