# vim: set ft=make:
include .env
include .env_os

sync_source = $(MOUNT_PATH)/$(MAIN_USBDRIVE_LABEL)
backup_usb_drive_dest = $(MOUNT_PATH)/$(MAIN_DRIVE_LABEL)

t:

test_tar:
	tar cvPf omzsh.tar --cd ~/.oh-my-zsh .

test_tar_gpg:
	tar cvPf - --cd ~/.oh-my-zsh . | gpg --symmetric --cipher-algo aes256 --batch --yes --passphrase ${BACKUP_PASSWORD} -o omzsh.tar.gpg

backup-usb-drive:
	tar c --verbose --preserve-permissions --file - --cd $(MOUNT_PATH)/$(MAIN_USBDRIVE_LABEL) \
		--exclude='.fseventsd' \
		--exclude=".DocumentRevisions*" \
		--exclude=".Spotlight*" \
		--exclude='.TemporaryItems' \
		--exclude='.Trashes' \
		. | gpg --symmetric --cipher-algo aes256 --batch --yes --passphrase ${BACKUP_PASSWORD} -o $(backup_usb_drive_dest)/$(MAIN_USBDRIVE_LABEL).tar.gpg

extract_gpg_tarball:
	gpg -d $(input-file) | tar xvfp - -C $(output-dir)

sync-usb:
	rsync --archive --verbose --human-readable --partial --progress --ignore-existing --delete $(args) \
		"$(sync_source)/Pictures/Unsplash" \
		"$(sync_source)/Pictures/Ultrawide Wallpapers" \
		"$(sync_source)/Pictures/macOS Desktop Pictures" \
		"$(sync_source)/Pictures/Ultrawide Wallpapers" \
		~/Pictures/
	rsync --archive --verbose --human-readable --partial --progress --ignore-existing --delete $(args) \
		"$(sync_source)/UNIX ricing" \
		~/

