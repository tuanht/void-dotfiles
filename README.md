# dotfiles

My personal repository for storing configurations across operating systems.

## Clone this project

```shell
git clone git@github.com:tuanht/dotfiles .dotfiles
```

## Install

### macOS

```shell
ln -sf ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -sf ~/.dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -sf ~/.dotfiles/gitconfig ~/.gitconfig
ln -sf ~/.dotfiles/tmux.conf ~/.tmux.conf
```

### Void Linux

## Tmux Plugin Manager

Clone TPM:

```shell
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Installing plugins: Press `prefix` + I (capital i, as in Install) to fetch the plugin.
Updating plugins: `prefix` + U
Removing plugins: `prefix` + alt + u

