The vInstaller is an automatic installer provided in order to facilitate Android OS installation/upgrade on ST's SPEAr1340 Platform based Boards. This installer is able to flash in NAND memories the entire software stack needed to have a complete working environment.

### 1. Folder Structure. ###
```
installer/
	This folder contains the installer software. DO NOT TOUCH OR MODIFY IT.
	
kernel/
	This folder contains the kernel to be installed. Put here your new
	version and name it uImage_Android.
	
lautherbach/
	This folder contains the lauterbach scripts used to flash the board the
	first time.
	
plat/
	This folder contains the platform files used in order to configure the
	vInstaller. Put here the new architectures supported.
	
rootfs/
	This folder contains the Android Root FS. Put here the archive of your
	new version and name it root.tar.gz. Keep in mind to substitute the
	right init.rc with the updated partition table.
	
u-boot/
	This folder contains the u-boot image.
	
xloader/
	This folder contains the xloader image.
```

### 2. Useful Files. ###
```
startup.source
        This file contains the startup script. Must be executed before
        using the vInstaller. Exec it with the command:
        source startup.source

config.sh
	This file is the command line configurator.
	Usage: ./config.sh <upgrade> [<platform>] [<nand>]
	Supported Upgrades:
	-xloader
	-kernel
	-android
	-debug
	Supported Platforms:
	-1340AB
        -1340ABC
        -1340ABC.ICS
	-900_LCAD
	-1340_LCAD
	Supported NANDs:
	-1GB
	-2GB

vInstaller.sh
	This file is the graphical installer, could be used in GTK+ desktops and
	requires Zenity.
```

### 3. Usage. ###

To use the vInstaller correctly follow the steps below:

  1. Decompress vInstaller archive into a fresh-formatted fat32 usb key.
  1. Copy uImage\_Android and root.tar.gz files into the usb key at the respective paths vinstaller/kernel and vInstaller/rootfs.
  1. Unmount and extract the usb key from your computer.
  1. Insert the USB key prepared at step 1 into the tablet and press the reset button.
  1. Wait up to the message "Remove USB key" (time needed roughtly 10 to 15 minutes).
  1. The system reboots after you extract the key and the system comes up.

Have a lot of fun with Android.

### 4. RootFS Building. ###

To build the Root FS archive correctly follow the steps below:

  1. Enter into the root/ directory in which you have your root filesystem.
  1. Create the root fs (as root user) archive with the command :
```
	sudo tar -czvf ../root.tar.gz *
```
  1. Go into the directory in which you have the file root.tar.gz and change the ownership of the archive with the commands:
```
   	chown <your user> root.tar.gz
   	chgrp <your user> root.tar.gz
```
  1. Copy the archive into the vInstaller/rootfs/ directory.