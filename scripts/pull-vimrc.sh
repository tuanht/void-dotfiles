#!/bin/bash
git --git-dir=$HOME/.vim_runtime/.git --work-tree=$HOME/.vim_runtime pull origin master

find $HOME/.vim_runtime/my_plugins -type d -depth 1 -exec git --git-dir={}/.git --work-tree={} pull origin master \;
