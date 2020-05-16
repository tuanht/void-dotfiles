#!/bin/bash

root_dir=$1

[ ! -d $root_dir ] && echo "\"${root_dir}\" is not directory" && exit 1

umount -l $root_dir/dev{/shm,/pts,}
umount -R $root_dir
