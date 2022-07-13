# Set keyboard layout
setxkbmap de

# Start compositor (shadows, alpha)
picom --daemon

# Set wallpaper
feh --bg-fill wallpapers/anime-balcony-clouds.jpg

# Start suckless programs
exec slstatus &
exec dwm
