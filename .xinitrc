# Start compositor (shadows, alpha)
picom &

# Set wallpaper
feh --bg-fill wallpapers/neon-city.jpg

# Start suckless programs
exec slstatus &
exec dwm
