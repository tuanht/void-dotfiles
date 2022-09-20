# vim: set ft=bash:
#!/bin/bash

###
# Signs xone's kernel modules to load on SecureBoot-enabled system
###

MODULE_DIR=/lib/modules/$(uname -r)/extra/xone
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

# Uncompress modules
find $MODULE_DIR -name "*.ko.xz" -type f -exec unxz "{}" \;

# Sign modules with keys
find $MODULE_DIR -name "*.ko" -type f -exec /usr/src/kernels/$(uname -r)/scripts/sign-file sha256 \
    $PRIVATE_KEY_FILE \
    $PUBLIC_KEY_FILE \
    "{}" \;

# Re-compress them
find $MODULE_DIR -name "*.ko" -type f -exec xz "{}" \;

# Load all modules
find $MODULE_DIR -name "*.ko.xz" -type f -exec insmod "{}" \;

