#xrandr --output DP-1 --primary --mode 1920x1080 --rate 144 --right-of HDMI-1
#xrandr --output HDMI-1 --mode 1920x1080 --rate 75 

# Set keyboard layout
setxkbmap de

xrdb ~/.Xresources

# Start compositor (shadows, alpha)
picom --daemon

# Set wallpaper
feh --bg-fill --no-fehbg Wallpapers/Gruvbox/1920x1080-dark-gentoo.png
# Start suckless programs
exec slstatus &
exec dwm
