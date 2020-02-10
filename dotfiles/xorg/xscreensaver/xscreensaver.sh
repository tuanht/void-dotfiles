#!/bin/sh

killall -q xscreensaver
while pgrep -u $UID -x xscreensaver >/dev/null; do sleep 1; done
xscreensaver &

