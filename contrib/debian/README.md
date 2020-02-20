
Debian
====================
This directory contains files used to package nexbitd/nexbit-qt
for Debian-based Linux systems. If you compile nexbitd/nexbit-qt yourself, there are some useful files here.

## nexbit: URI support ##


nexbit-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install nexbit-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your nexbit-qt binary to `/usr/bin`
and the `../../share/pixmaps/nexbit128.png` to `/usr/share/pixmaps`

nexbit-qt.protocol (KDE)

