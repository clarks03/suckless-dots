#!/bin/sh

case $BLOCK_BUTTON in
    1) /home/stephen/Downloads/spotifyc/spotifyc -c; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
    2) /home/stephen/Downloads/spotifyc/spotifyc -n; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
    3) /home/stephen/Downloads/spotifyc/spotifyc -p; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
    5) /home/stephen/Downloads/spotifyc/spotifyc -v -5 2> /dev/null; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
    4) /home/stephen/Downloads/spotifyc/spotifyc -v +5 2> /dev/null; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
esac

prompt="$(/home/stephen/Downloads/spotifyc/spotifyc -f '{{ icon }} {{ artist }}: {{ title }}' -i '' '' -o )"

if [ ${#prompt} -gt 35 ]; then
    truncated=$(echo "$prompt" | cut -c1-35)
    echo "^c#fb4934^$truncated..."
else
    echo "^c#fb4934^$prompt"
fi

