# dotfiles

My personal repository for storing configurations across *nix operating systems.

## Pre-requirements

Install `git`, `git-lfs`, `curl`, `neovim`, `tmux` and `zsh` (non-macOS only)

### macOS

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git git-lfs curl neovim tmux
```

### Ubuntu-based Linux

```shell
sudo apt install git git-lfs curl neovim tmux zsh
```

## Quick start

```shell
yadm clone git@github.com:tuanht/dotfiles
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
| [Anonymous Pro](https://www.marksimonson.com/fonts/view/anonymous-pro) | font-anonymous{-pro,pro-nerd-font} | media-fonts/anonymous-pro | ttf-anonymous-pro |
| [Hack](https://sourcefoundry.org/hack/) | font-hack{,-nerd-font} | media-fonts/hack | |
| Source Code Pro | font-source{-code-pro,codepro-nerd-font} | [v2.030](https://github.com/adobe-fonts/source-code-pro/releases/download/2.030R-ro%2F1.050R-it/source-code-pro-2.030R-ro-1.050R-it.zip) | - |
| Jetbrains Mono | font-jetbrains-mono | media-fonts/jetbrains-mono | [JetBrainsMono-1.0.3.zip](https://download.jetbrains.com/fonts/JetBrainsMono-1.0.3.zip) |

