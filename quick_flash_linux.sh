#!/bin/bash -e

echo "Transferring firmware"
sudo dd if=dztech_dz60rgb_ansi_v2_1_shearn89.bin of=/media/kazper/KBDFANS/FLASH.BIN conv=notrunc oflag=direct,sync
sync

echo "Unmounting so the bootloader commits the flash and reboots"
sudo umount /media/kazper/KBDFANS

echo "done — keyboard should re-enumerate as a HID device shortly"
