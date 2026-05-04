#!/bin/bash -e

echo "sudo for password prompt"
sudo whoami

qmk compile -kb dztech/dz60rgb_ansi/v2_1 -km shearn89
echo "compiled, please replug the board in firmware loading mode! (hold esc)"
echo "You have 15 seconds to comply."
sleep 15
echo "Continuing!"

echo "Transferring firmware"
sudo dd if=dztech_dz60rgb_ansi_v2_1_shearn89.bin of=/media/kazper/KBDFANS/FLASH.BIN conv=notrunc oflag=direct,sync
sync

echo "Unmounting so the bootloader commits the flash and reboots"
sudo umount /media/kazper/KBDFANS

echo "done — keyboard should re-enumerate as a HID device shortly"
