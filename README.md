# 💿 Creating a Bootable Linux USB via Bash Script

This is a small Bash script that allows you to create a bootable USB drive with a Linux ISO directly from the terminal, quickly and easily, without the need for external programs.

⚠️ **Warning:** This script is intended for Bash scripting practice. It is basic, without memory checks or automatic device detection. Use at your own risk.

## ⚡ Features

* Lists available removable devices
* Allows you to choose the USB drive to be erased
* Clears the USB drive and writes the ISO
* Automatically ejects the USB drive after completion

> ⚠️ All data on the USB drive will be erased!

## 📝 How to Use

1. Clone this repository or download the script.
2. Give execution permission:
   ```bash
   chmod +x bootable-usb.sh
   ```
3. Run:
   ```bash
   ./bootable-usb.sh
   ```
## Follow the instructions:

* Enter the name of the USB drive (e.g., sdb)
* Confirm that you want to erase the USB drive
* Enter the full path to the ISO file

> The script will erase the USB drive, write the ISO, and eject it at the end.
