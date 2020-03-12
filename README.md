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

| Platform | macOS (brew cask) | Gentoo | Ubuntu |
|----------|-------------------|--------|--------|
| Rubik | font-rubik | [Rubik](https://www.fontsquirrel.com/fonts/rubik) | - |
| [IBM Plex](https://www.ibm.com/plex/) | font-ibm-plex | media-fonts/ibm-plex | |
| [Terminus](https://files.ax86.net/terminus-ttf/) | font-terminus | media-fonts/terminus | xfonts-terminus |
| [Anonymous Pro](https://www.marksimonson.com/fonts/view/anonymous-pro) | font-anonymous-pro{-nerd-font} | media-fonts/anonymous-pro | ttf-anonymous-pro |
| [Hack](https://sourcefoundry.org/hack/) | font-hack{-nerd-font} | media-fonts/hack | |
| Source Code Pro | font-source-code-pro | [v2.030](https://github.com/adobe-fonts/source-code-pro/releases/download/2.030R-ro%2F1.050R-it/source-code-pro-2.030R-ro-1.050R-it.zip) | - |

