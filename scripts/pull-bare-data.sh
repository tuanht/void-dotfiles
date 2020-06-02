#!/bin/sh

OS_TYPE="$(uname)"
PASS_PREFIX="$HOME/.password-store"
YADM_PREFIX="$HOME/.config/yadm/repo.git"
NOTE_PREFIX="$HOME/notes"
NOW=$(date +%s)
RANGE=$(expr 60 \* 60 \* 24)

function stat_modify() {
    case $OS_TYPE in
        "Linux")
            echo $(stat -c %Y $1)
            ;;
        *)
            echo $(stat -f '%m' $1)
            ;;
    esac
}

# Pass data
echo 'Checking pass status...'

last_pulled=$(stat_modify $PASS_PREFIX/.git/FETCH_HEAD)
diff=$(expr $NOW - $last_pulled)

if [ "$diff" -gt "$RANGE" ]; then
    echo 'Updating pass...'
    pass git pull --ff-only
fi

# dotfiles
echo 'Checking dotfiles status...'

last_pulled=$(stat_modify $PASS_PREFIX/.git/FETCH_HEAD)
diff=$(expr $NOW - $last_pulled)

if [ "$diff" -gt "$RANGE" ]; then
    echo 'Updating dotfiles...'
    yadm pull --ff-only
fi

# notes
echo 'Checking notes status...'

last_pulled=$(stat_modify $NOTE_PREFIX/.git/FETCH_HEAD)
diff=$(expr $NOW - $last_pulled)

if [ "$diff" -gt "$RANGE" ]; then
    echo 'Updating notes...'
    git -C $NOTE_PREFIX pull --ff-only
fi

