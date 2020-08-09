#!/usr/bin/env fish

set YADM_PREFIX "$HOME/.config/yadm/repo.git"
set NOTE_PREFIX "$HOME/notes"
set NOW (date +%s)
set RANGE (expr 60 \* 60 \* 24)

function date_modify
    switch (uname)
        case Linux
            echo (stat -c %Y $argv)
        case '*'
            echo (stat -f '%m' $argv)
    end
end

# dotfiles
echo 'Checking dotfiles status...'

set last_pulled (date_modify $YADM_PREFIX/FETCH_HEAD)
set diff (expr $NOW - $last_pulled)

if test "$diff" -gt "$RANGE"
    echo 'Updating dotfiles...'
    yadm pull --ff-only
end

# notes
echo 'Checking notes status...'

set last_pulled (date_modify $NOTE_PREFIX/.git/FETCH_HEAD)
set diff (expr $NOW - $last_pulled)

if test "$diff" -gt "$RANGE"
    echo 'Updating notes...'
    git -C $NOTE_PREFIX pull --ff-only
end

