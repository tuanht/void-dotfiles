#!/bin/bash

rsync -avz -e ssh \
    --exclude=.git --exclude=.vscode --exclude=.idea --exclude=vendor/* --exclude=var/cache/* \
    --exclude=web/uploads --exclude=web/bundles \
    ~/everystay/base tuanht@192.168.1.99:/home/tuanht/everystay/
