# vim: set ft=zsh:

set_iterm_profile() {
    dark_theme="$ITERM_DARK_PROFILE"
    light_theme="$ITERM_LIGHT_PROFILE"

    if [[ $ITERM_PROFILE != $dark_theme ]] && [[ $ITERM_PROFILE != $light_theme ]]; then
        return 0
    fi

    macostheme=$(defaults read -g AppleInterfaceStyle 2>/dev/null)
    if [[ $macostheme == "Dark" ]]; then
        echo -ne "\033]50;SetProfile=$dark_theme\a"
        export ITERM_PROFILE="$dark_theme"
    else
        echo -ne "\033]50;SetProfile=$light_theme\a"
        export ITERM_PROFILE="$light_theme"
    fi
}

if [[ $(uname) == "Darwin" ]] && [[ $TERM_PROGRAM == "iTerm.app" ]]; then
    set_iterm_profile
fi

