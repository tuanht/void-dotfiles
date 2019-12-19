# dotfiles

My personal repository for storing configurations across *nix operating systems.

## Clone this project

```shell
git clone git@github.com:tuanht/dotfiles .dotfiles
cd .dotfiles
git submodule update --init
```

## Install

For MacOS users, make sure to install `realpath` through homebrew (part of coreutils).

```shell
pip3 install -r dotdrop/requirements.txt --user
./dotdrop/bootstrap.sh
./dotdrop.sh install --profile=<mac|linux|xorg|vim-only>
```

## Tmux Plugin Manager quick reference:

- Installing plugins: Press `prefix` + I (capital i, as in Install) to fetch the plugin.
- Updating plugins: `prefix` + U
- Removing plugins: `prefix` + alt + u

## Fonts

List of my favourite fonts (`font-`'s homebrew prefix):

1. [Rubik](https://www.fontsquirrel.com/fonts/rubik)
2. [IBM Plex](https://www.ibm.com/plex/)
3. [Terminus](https://files.ax86.net/terminus-ttf/) (TTF)
4. [Anonymous Pro](https://www.marksimonson.com/fonts/view/anonymous-pro) + Nerd (`-nerd-font`)
5. [Hack](https://sourcefoundry.org/hack/) + Nerd (`-nerd-font`)

