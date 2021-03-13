AddPackage --foreign yay-bin # Yet another yogurt. Pacman wrapper and AUR helper written in go. Pre-compiled.
AddPackage --foreign aconfmgr-git # A configuration manager for Arch Linux

# base
CopyFile /etc/pacman.d/mirrorlist
AddPackage base # Minimal package set to define a basic Arch Linux installation
AddPackage efibootmgr # Tool to modify UEFI Firmware Boot Manager Variables
AddPackage linux # The Linux kernel and modules
AddPackage linux-firmware # Firmware files for Linux
AddPackage sudo # Give certain users the ability to run some commands as root

CopyFile /etc/makepkg.conf
CopyFile /etc/mkinitcpio.conf

CopyFile /etc/systemd/homed.conf

CreateLink /etc/systemd/user/sockets.target.wants/dirmngr.socket /usr/lib/systemd/user/dirmngr.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-browser.socket /usr/lib/systemd/user/gpg-agent-browser.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-extra.socket /usr/lib/systemd/user/gpg-agent-extra.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent-ssh.socket /usr/lib/systemd/user/gpg-agent-ssh.socket
CreateLink /etc/systemd/user/sockets.target.wants/gpg-agent.socket /usr/lib/systemd/user/gpg-agent.socket
CreateLink /etc/systemd/user/sockets.target.wants/p11-kit-server.socket /usr/lib/systemd/user/p11-kit-server.socket

CopyFile /etc/locale.gen
CreateLink /etc/localtime /usr/share/zoneinfo/Europe/Minsk
CopyFile /etc/hostname
CopyFile /etc/hosts

# NTP
CreateLink /etc/systemd/system/dbus-org.freedesktop.timesync1.service /usr/lib/systemd/system/systemd-timesyncd.service
CreateLink /etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service /usr/lib/systemd/system/systemd-timesyncd.service

# Network
AddPackage networkmanager
AddPackage network-manager-applet # Applet for managing network connections
CreateLink /etc/systemd/system/dbus-org.freedesktop.nm-dispatcher.service /usr/lib/systemd/system/NetworkManager-dispatcher.service
CreateLink /etc/systemd/system/multi-user.target.wants/NetworkManager.service /usr/lib/systemd/system/NetworkManager.service
CreateLink /etc/systemd/system/network-online.target.wants/NetworkManager-wait-online.service /usr/lib/systemd/system/NetworkManager-wait-online.service


# base-devel
AddPackage autoconf # A GNU tool for automatically configuring source code
AddPackage automake # A GNU tool for automatically creating Makefiles
AddPackage binutils # A set of programs to assemble and manipulate binary and object files
AddPackage bison # The GNU general-purpose parser generator
AddPackage fakeroot # Tool for simulating superuser privileges
AddPackage flex # A tool for generating text-scanning programs
AddPackage gcc # The GNU Compiler Collection - C and C++ frontends
AddPackage groff # GNU troff text-formatting system
AddPackage libtool # A generic library support script
AddPackage m4 # The GNU macro processor
AddPackage make # GNU make utility to maintain groups of programs
AddPackage man-db # A utility for reading man pages
AddPackage patch # A utility to apply patch files to original sources
AddPackage pkgconf # Package compiler and linker metadata toolkit
AddPackage texinfo # GNU documentation system for on-line information and printed output
AddPackage which # A utility to show the full path of commands

#
# System tools
#
AddPackage pacman-contrib # Contributed scripts and tools for pacman systems

# Configure swap
CopyFile /etc/sysctl.d/10-vm.conf

# Hardware
AddPackage amd-ucode # Microcode update files for AMD CPUs
CopyFile /etc/mkinitcpio.conf

AddPackage lm_sensors # Collection of user space tools for general SMBus access and hardware monitoring
CopyFile /etc/conf.d/lm_sensors
CreateLink /etc/systemd/system/multi-user.target.wants/lm_sensors.service /usr/lib/systemd/system/lm_sensors.service

# # It's kinda flaky
# AddPackage linux-headers # Headers and scripts for building modules for the Linux kernel
# AddPackage --foreign rtl88x2bu-dkms-git # Kernel module for Realtek rtl88x2bu WiFi chipset


#
# Login manager
#
AddPackage --foreign greetd # Generic greeter daemon
AddPackage --foreign greetd-tuigreet # A console UI greeter for greetd
CreateLink /etc/systemd/system/display-manager.service /usr/lib/systemd/system/greetd.service
CopyFile /etc/greetd/config.toml


#
# Dev tools
#
AddPackage git # the fast distributed version control system
AddPackage neovim # Fork of Vim aiming to improve user experience, plugins, and GUIs
AddPackage htop # Interactive process viewer
AddPackage zsh # A very advanced and programmable command interpreter (shell) for UNIX
AddPackage ncdu # Disk usage analyzer with an ncurses interface
AddPackage openssh # Premier connectivity tool for remote login with the SSH protocol
AddPackage tree # A directory listing program displaying a depth indented list of files
AddPackage shellcheck # Shell script analysis tool
AddPackage unzip # For extracting and viewing files in .zip archives
AddPackage wget # Network utility to retrieve files from the Web
AddPackage --foreign direnv # a shell extension that manages your environment
AddPackage --foreign asdf-vm # Extendable version manager with support for Ruby, Node.js, Elixir, Erlang & more

#
# Graphics
#
AddPackage xf86-video-amdgpu # X.org amdgpu video driver
CopyFile /etc/X11/xorg.conf.d/20-amdgpu.conf
AddPackage vulkan-radeon # Radeon's Vulkan mesa driver

#
# Sound
#
AddPackage alsa-utils # An alternative implementation of Linux sound support
AddPackage pulseaudio # A featureful, general-purpose sound server
AddPackage pulseaudio-alsa # ALSA Configuration for PulseAudio
AddPackage pulsemixer # CLI and curses mixer for pulseaudio
CreateLink /etc/systemd/user/sockets.target.wants/pulseaudio.socket /usr/lib/systemd/user/pulseaudio.socket


#
# Fonts
#
AddPackage --foreign cairo-infinality-remix # Cairo vector graphics library with Infinality patch support
AddPackage --foreign fontconfig-infinality-remix # A library for configuring and customizing font access, optimized for Infinality Remix.
AddPackage --foreign freetype2-infinality-remix # TrueType font rendering library with Infinality Remix patches

AddPackage noto-fonts # Google Noto TTF fonts
AddPackage otf-overpass # An open source font family inspired by Highway Gothic esp. suited for signs, lettering and web sites
AddPackage tex-gyre-fonts # Substitute PostScript fonts in OpenType format
AddPackage ttf-caladea # Google's Caladea font
AddPackage ttf-carlito # Google's Carlito font
AddPackage ttf-dejavu # Font family based on the Bitstream Vera Fonts with a wider range of characters
AddPackage ttf-liberation # Red Hats Liberation fonts
AddPackage ttf-roboto # Google's signature family of fonts
AddPackage --foreign ttf-iosevka # A slender monospace typeface. Shape
AddPackage --foreign ttf-iosevka-term # A slender monospace typeface. Shape
AddPackage --foreign nerd-fonts-iosevka # Patched Iosevka font from the nerd-fonts library
AddPackage --foreign ttf-courier-prime # Monospace Courier font alternative optimized for screenplays
AddPackage --foreign ttf-gelasio-ib # Gelasio is designed to be metrics compatible with Georgia in its Regular, Bold, Italic and Bold Italic weights. Interpolated Medium, medium Italic, SemiBold and SemiBold Italic have now been added as well.
AddPackage --foreign ttf-merriweather # A typeface that is pleasant to read on screens by Sorkin Type Co
AddPackage --foreign ttf-signika # Sans-serif typeface from Google by Anna Giedryś
AddPackage --foreign ttf-source-sans-pro-ibx # A set of OpenType fonts designed for user interfaces. TrueType version.

CreateLink /etc/fonts/conf.d/30-metric-aliases-combi.conf /etc/fonts/conf.avail.infinality/combi/30-metric-aliases-combi.conf
CreateLink /etc/fonts/conf.d/37-repl-global-combi.conf /etc/fonts/conf.avail.infinality/combi/37-repl-global-combi.conf
CreateLink /etc/fonts/conf.d/60-latin-combi.conf /etc/fonts/conf.avail.infinality/combi/60-latin-combi.conf
CreateLink /etc/fonts/conf.d/65-non-latin-combi.conf /etc/fonts/conf.avail.infinality/combi/65-non-latin-combi.conf
CreateLink /etc/fonts/conf.d/66-aliases-wine-combi.conf /etc/fonts/conf.avail.infinality/combi/66-aliases-wine-combi.conf
SetFileProperty /etc/fonts/conf.d/35-repl-custom.conf deleted y


#
# Keyboard
#
CopyFile /etc/X11/xorg.conf.d/00-keyboard.conf

#
# Desktop
#
AddPackage termite # A simple VTE-based terminal
AddPackage bspwm # Tiling window manager based on binary space partitioning
AddPackage sxhkd # Simple X hotkey daemon
AddPackage lxsession # Lightweight X11 session manager
AddPackage feh # Fast and light imlib2-based image viewer
AddPackage xorg-xinit # X.Org initialisation program
AddPackage xorg-xrandr # Primitive command line interface to RandR extension
AddPackage xorg-xset # User preference utility for X
AddPackage xorg-xsetroot # Classic X utility to set your root window background to a given pattern or color
AddPackage --foreign colorpicker # Click on a pixel on your screen and print its color value in RGB. Written for X11.
AddPackage redshift # Adjusts the color temperature of your screen according to your surroundings.
AddPackage capitaine-cursors # An x-cursor theme inspired by macOS and based on KDE Breeze
AddPackage --foreign picom-git # X compositor (fork of compton) (git-version)
AddPackage --foreign polybar # A fast and easy-to-use status bar
AddPackage --foreign dmenu2 # Fork of dmenu with many useful patches applied and additional options like screen select, dim or opacity change
AddPackage rofi # A window switcher, application launcher and dmenu replacement

#
# Apps
#
AddPackage chromium # A web browser built for speed, simplicity, and security
AddPackage code # The Open Source build of Visual Studio Code (vscode) editor
AddPackage firefox # Standalone web browser from mozilla.org
AddPackage kitty # A simple VTE-based terminal
AddPackage xclip # Command line interface to the X11 clipboard
AddPackage telegram-desktop # Official Telegram Desktop client
AddPackage vlc # Multi-platform MPEG, VCD/DVD, and DivX player
AddPackage --foreign transmission-sequential-gtk # Fast, easy, and free BitTorrent client (GTK+ GUI) (+sequential patch)
