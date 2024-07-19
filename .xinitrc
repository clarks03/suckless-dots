# Some other stuff up here

# Setting keyboard repeat rate
xset r rate 200 40

# Setting monitor orientations
/home/stephen/.screenlayout/layout.sh

# Setting colourscheme before wallpaper (cuz pywal sets wallpaper too)
# wal -i /home/stephen/Wallpapers/wallhaven-7p75yy.png

# Or, choose a manual colourscheme from here:
xrdb /home/stephen/.config/Xresources

# Resetting wallpaper
/home/stephen/.fehbg &

# Starting up dwmblocks
dwmblocks &  # not sure if setsid is necessary here or not

# Setting up notifs with dunst
dunst &  # only keeping this here for now just so i can test if the dwmblocks scripts are working

exec dwm
