#!/bin/sh

root_dir=$1

[ ! -d $root_dir ] && echo "\"${root_dir}\" is not directory" && exit 1

mount --types proc /proc $root_dir/proc
mount --rbind /sys $root_dir/sys
mount --make-rslave $root_dir/sys
mount --rbind /dev $root_dir/dev
mount --make-rslave $root_dir/dev

