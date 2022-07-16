xrandr --output DP-1 --primary --mode 1920x1080 --rate 144 --right-of HDMI-1
xrandr --output HDMI-1 --mode 1920x1080 --rate 60 --left-of DP-1

# Set keyboard layout
setxkbmap de

# Start compositor (shadows, alpha)
picom --daemon

# Set wallpaper
feh --bg-fill wallpapers/anime-balcony-clouds.jpg

# Start suckless programs
exec slstatus &
exec dwm
