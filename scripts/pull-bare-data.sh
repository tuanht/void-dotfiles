#!/usr/bin/env bash

OS_TYPE="$(uname)"
YADM_PREFIX="$HOME/.local/share/yadm/repo.git"
NOTE_PREFIX="$HOME/notes"
NOW=$(date +%s)
RANGE=$(expr 60 \* 60 \* 24)

function date_modify() {
    case $OS_TYPE in
        "Linux")
            echo $(stat -c %Y $1)
            ;;
        *)
            echo $(stat -f '%m' $1)
            ;;
    esac
}

# dotfiles
echo 'Checking dotfiles status...'

last_pulled=$(date_modify $YADM_PREFIX/FETCH_HEAD)
diff=$(expr $NOW - $last_pulled)

if [ "$diff" -gt "$RANGE" ]; then
    echo 'Updating dotfiles...'
    yadm pull --ff-only
fi

# notes
echo 'Checking notes status...'

last_pulled=$(date_modify $NOTE_PREFIX/.git/FETCH_HEAD)
diff=$(expr $NOW - $last_pulled)

if [ "$diff" -gt "$RANGE" ]; then
    echo 'Updating notes...'
    git -C $NOTE_PREFIX pull --ff-only
fi

