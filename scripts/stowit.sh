#!/usr/bin/env bash

base=(
    alacritty
    bash
    bin
    calcurse
    config
    gemrc
    nvim
    python
    ranger
    termite
    tmux
    trizen
    vifm
    w3m
    xonsh
    Xresources
    zsh
)

useronly=(
    cvim
    dunst
    fonts
    getkeys
    git
    gtk
    hyper
    i3
    mpd
    mpv
    ncmpcpp
    node
    polybar
    rofi
    sxhkd
    sxiv
    transmission
    zathura
)

stowit() {
    usr=$1
    app=$2
    stow -v -R -t ${usr} ${app}
}

echo ""
echo "Stowing apps for user: ${whoami}"

for app in ${base[@]}; do
    stowit "${HOME}" $app
done

for app in ${useronly[@]}; do
    if [[ ! "$(whoami)" = *"root"* ]]; then
        stowit "${HOME}" $app
    fi
done

echo ""
echo "##### ALL DONE"

