#!/bin/bash
find ~/.vim_runtime/my_plugins -type d -depth 1 -exec git --git-dir={}/.git --work-tree={} pull origin master \;
