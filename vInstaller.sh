#!/bin/sh
#
# vInstaller an Android upgrade tool.
# Copyright (C) 2012 Vincenzo Frascino <vincenzo.frascino@st.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see .
#

. $(pwd -P)/cleanup.source

SELECT=`zenity --title "Select the Platform to Upgrade" \
		--text "Select the Platform to Upgrade:" \
		--width=350 --height=300 \
		--list --checklist --column="Select" --column="Platform" \
		False "xloader.1340AB.1GB" False "xloader.1340AB.2GB" \
		False "kernel.1340AB.1GB" False "kernel.1340AB.2GB" \
		False "android.1340AB.1GB" False "android.1340AB.2GB" \
		False "xloader.1340ABC.1GB" False "xloader.1340ABC.2GB" \
		False "kernel.1340ABC.1GB" False "kernel.1340ABC.2GB" \
		False "android.1340ABC.1GB" False "android.1340ABC.2GB" \
		False "xloader.1340ABC.ICS.1GB" False "xloader.1340ABC.ICS.2GB" \
		False "kernel.1340ABC.ICS.1GB" False "kernel.1340ABC.ICS.2GB" \
		False "android.1340ABC.ICS.1GB" False "android.1340ABC.ICS.2GB" \
		False "xloader.1340ABC.ICS.IRIS.512MB" False "xloader.1340ABC.ICS.IRIS.1GB" \
		False "kernel.1340ABC.ICS.IRIS.512MB" False "kernel.1340ABC.ICS.IRIS.1GB" \
		False "android.1340ABC.ICS.IRIS.512MB" False "android.1340ABC.ICS.IRIS.1GB" \
		False "xloader.1340_LCAD.1GB" False "xloader.1340_LCAD.2GB" \
		False "kernel.1340_LCAD.1GB" False "kernel.1340_LCAD.2GB" \
		False "android.1340_LCAD.1GB" False "android.1340_LCAD.2GB" \
		False "android.900_LCAD.1GB" \
		False "BootAndroid.usb" False "BootAndroid.mmc" \
		False "debug" \
		False "debug-usb"`

case $SELECT in
	xloader.1340AB.1GB)
		A=-xloader;
		B=-1340AB;
		C=-1GB;
		;;
	xloader.1340AB.2GB)
		A=-xloader;
		B=-1340AB;
		C=-2GB;
		;;
	kernel.1340AB.1GB)
		A=-kernel;
		B=-1340AB;
		C=-1GB;
		;;
	kernel.1340AB.2GB)
		A=-kernel;
		B=-1340AB;
		C=-2GB;
		;;
	android.1340AB.1GB)
		A=-android;
		B=-1340AB;
		C=-1GB;
		;;
	android.1340AB.2GB)
		A=-android;
		B=-1340AB;
		C=-2GB;
		;;
	xloader.1340ABC.1GB)
		A=-xloader;
		B=-1340ABC;
		C=-1GB;
		;;
	xloader.1340ABC.2GB)
		A=-xloader;
		B=-1340ABC;
		C=-2GB;
		;;
	kernel.1340ABC.1GB)
		A=-kernel;
		B=-1340ABC;
		C=-1GB;
		;;
	kernel.1340ABC.2GB)
		A=-kernel;
		B=-1340ABC;
		C=-2GB;
		;;
	android.1340ABC.1GB)
		A=-android;
		B=-1340ABC;
		C=-1GB;
		;;
	android.1340ABC.2GB)
		A=-android;
		B=-1340ABC;
		C=-2GB;
		;;
	xloader.1340ABC.ICS.1GB)
		A=-xloader;
		B=-1340ABC.ICS;
		C=-1GB;
		;;
	xloader.1340ABC.ICS.2GB)
		A=-xloader;
		B=-1340ABC.ICS;
		C=-2GB;
		;;
	kernel.1340ABC.ICS.1GB)
		A=-kernel;
		B=-1340ABC.ICS;
		C=-1GB;
		;;
	kernel.1340ABC.ICS.2GB)
		A=-kernel;
		B=-1340ABC.ICS;
		C=-2GB;
		;;
	android.1340ABC.ICS.1GB)
		A=-android;
		B=-1340ABC.ICS;
		C=-1GB;
		;;
	android.1340ABC.ICS.2GB)
		A=-android;
		B=-1340ABC.ICS;
		C=-2GB;
		;;
	xloader.1340ABC.ICS.IRIS.512MB)
		A=-xloader;
		B=-1340ABC.ICS.IRIS;
		C=-512MB;
		;;
	xloader.1340ABC.ICS.IRIS.1GB)
		A=-xloader;
		B=-1340ABC.ICS.IRIS;
		C=-1GB;
		;;
	kernel.1340ABC.ICS.IRIS.512MB)
		A=-kernel;
		B=-1340ABC.ICS.IRIS;
		C=-512MB;
		;;
	kernel.1340ABC.ICS.IRIS.1GB)
		A=-kernel;
		B=-1340ABC.ICS.IRIS;
		C=-1GB;
		;;
	android.1340ABC.ICS.IRIS.512MB)
		A=-android;
		B=-1340ABC.ICS.IRIS;
		C=-512MB;
		;;
	android.1340ABC.ICS..IRIS.1GB)
		A=-android;
		B=-1340ABC.ICS.IRIS;
		C=-1GB;
		;;
	xloader.1340_LCAD.1GB)
		A=-xloader;
		B=-1340_LCAD;
		C=-1GB;
		;;
	xloader.1340_LCAD.2GB)
		A=-xloader;
		B=-1340_LCAD;
		C=-2GB;
		;;
	kernel.1340_LCAD.1GB)
		A=-kernel;
		B=-1340_LCAD;
		C=-1GB;
		;;
	kernel.1340_LCAD.2GB)
		A=-kernel;
		B=-1340_LCAD;
		C=-2GB;
		;;
	android.1340_LCAD.1GB)
		A=-android;
		B=-1340_LCAD;
		C=-1GB;
		;;
	android.1340_LCAD.2GB)
		A=-android;
		B=-1340_LCAD;
		C=-2GB;
		;;
	android.900_LCAD.1GB)
		A=-android;
		B=-900_LCAD;
		C=-1GB;
		;;
	BootAndroid.usb)
		A=-bootandroid;
		B=usb
		;;
	BootAndroid.mmc)
		A=-bootandroid;
		B=mmc
		;;
	debug)
		A=-debug;
		;;
	debug-usb)
		A=-debug-usb;
		;;
	*)
		;;
esac

#Exec config.sh
./config.sh $A $B $C

zenity --info --text="vInstaller configuration complete."
      
