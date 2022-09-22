# vim: set ft=bash:
#!/bin/bash

MODULE_DIR=/lib/modules/$(uname -r)/misc/
PRIVATE_KEY_FILE=${1}
PUBLIC_KEY_FILE=${2}

if [ ! -d $MODULE_DIR ]; then
    echo "$MODULE_DIR does not exists."
    exit 1
fi

if [ ! -s "$PRIVATE_KEY_FILE" ]; then
    echo "PRIVATE_KEY_FILE does not exists."
    exit 2
fi

if [ ! -s "$PUBLIC_KEY_FILE" ]; then
    echo "PUBLIC_KEY_FILE does not exists."
    exit 3
fi

/usr/src/kernels/$(uname -r)/scripts/sign-file sha256 \
    $PRIVATE_KEY_FILE \
    $PUBLIC_KEY_FILE \
    $MODULE_DIR/vmmon.ko

/usr/src/kernels/$(uname -r)/scripts/sign-file sha256 \
    $PRIVATE_KEY_FILE \
    $PUBLIC_KEY_FILE \
    $MODULE_DIR/vmnet.ko

modprobe vmmon
modprobe vmnet

echo "Sign VMware modules completed. Restart workstation for fully networking support."

