# dotfiles

My personal repository for storing configurations across *nix operating systems.

## Clone this project

```shell
git clone git@github.com:tuanht/dotfiles .dotfiles
```

## Install

### Pre-requirements

1. Install vimrc:

```
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
```

2. Install Neovim + PluginManager

```
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

3. Instal ohmyzsh:

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

4. Tmux Plugin Manager

```shell
$ git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Quick reference:
- Installing plugins: Press `prefix` + I (capital i, as in Install) to fetch the plugin.
- Updating plugins: `prefix` + U
- Removing plugins: `prefix` + alt + u

### stow

```shell
cd home && stow .
```

## Fonts

List of my favourite fonts (`font-`'s homebrew prefix):

1. [Rubik](https://www.fontsquirrel.com/fonts/rubik)
2. [IBM Plex](https://www.ibm.com/plex/)
3. [Terminus](https://files.ax86.net/terminus-ttf/) (TTF)
4. [Anonymous Pro](https://www.marksimonson.com/fonts/view/anonymous-pro) + Nerd (`-nerd-font`)
5. [Hack](https://sourcefoundry.org/hack/) + Nerd (`-nerd-font`)

