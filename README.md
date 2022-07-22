# Setup

+ **OS**: Gentoo
+ **WM**: [dwm](http://dwm.suckless.org/) - with tilegap and fixborders patches
+ **Compositor**: [Picom](http://dwm.suckless.org/) - for transparency 
+ **Terminal**: [st](http://st.suckless.org/) - with alpha, anysize, gruvbox, scrollback-ringbuffer patches
+ **Shell**: [zsh](https://www.zsh.org/)
+ **Editor**: [Neovim](https://github.com/neovim/neovim/)
+ **Launcher**: [dmenu](http://tools.suckless.org/dmenu/)
+ **Browser**: Firefox
+ **Music**: Spotify

## Required packages

+ Gentoo
	- x11-libs/libXinerama               - Required for DWM, also useful for multiple monitor support
	- x11-libs/libXft                    - Required for DWM
	- x11-base/xorg-server               - Most important part of xorg
	- x11-apps/xinit                     - startx, .xinitrc
	- x11-misc/picom                     - Compositor for window effects (e.g. transparency [alpha patch], window fading)

	- media-fonts/fontawesome            - Add support for the custom DWM tag icons
	- media-gfx/feh                      - Image viewer, used to set wallpaper

	- app-shells/zsh                     - Customizable shell


+ Arch
	- xorg                               - Required for wm (you can install a different fork of dwm to use with wayland I think)
	- ttf-font-awesome                   - Custom tab icons in dwm
	- picom                              - Compositor for window effects and transparency
	- feh                                - Image viewer, used to set wallpaper
	- zsh                                - Customizable shell

## Other packages I use
+ x11-apps/xrandr                    - Used to set display configurations
+ x11-apps/setxkbmap                 - Used to set the keyboard layout in xorg
+ x11-drivers/xf86-input-libinput
+ x11-drivers/nvidia-drivers and sys-firmware/nvidia-firmware

+ net-misc/chrony                    - Used to synchronize time via ntp
+ net-misc/networkmanager            - NetworkManager, in combination with (or sometimes replaced by) dhcpcd and iwd (for laptop)
+ net-misc/dhcpcd                    - dhcp client for networking
+ net-wireless/iwd                   - Wifi client, used on my laptop

+ media-sound/alsa-lib               - Alsa, for general sound support
+ media-sound/alsa-utils             - Haha cli mixer go brr
+ media-sound/pulseaudio             - On top of alsa
+ media-sound/pulsemixer             - Haha cli mixer go brr
+ media-gfx/scrot                    - Taking screenshots

+ app-editors/neovim                 - Text editor

+ www-client/firefox-bin             - Browser (recommended to also install dev-lang/rust-bin to reduce waiting times)

+ app-shells/zsh-completions         - Support for common command completions | I'd recommend using this to make your life a bit easier
+ app-shells/gentoo-zsh-completions  - Support for gentoo-specific completions

## Suckless utility
Suckless programs are located in .config with patches and custom settings applied

## Other config files
+ ~/.xinitrc              - Set up dwm and other programs when starting xorg
+ ~/.Xresources           - Set cursor theme
+ ~/.zshrc                - Set command completion and custom prompt
+ ~/.zprofile             - Run startx on login
+ ~/.config/nvim (Folder) - Provide init.vim, color schemes and plugins 

## Scripts

### collect_files.sh
Used to copy all necessary files from home directory into repo folder
