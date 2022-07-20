#xrandr --output DP-0 --primary --mode 1920x1080 --rate 144 --right-of HDMI-1
#xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --left-of DP-1

# Set keyboard layout
setxkbmap de

# Start compositor (shadows, alpha)
picom --daemon

# Set wallpaper
feh --bg-fill --no-fehbg wallpapers/sakura-neon-korea.jpg

# Start suckless programs
exec slstatus &
exec dwm
