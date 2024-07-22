#!/bin/sh

case $BLOCK_BUTTON in
    1) spotifyc -c; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
    2) spotifyc -n; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
    3) spotifyc -p; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
    5) spotifyc -v -5 2> /dev/null; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
    4) spotifyc -v +5 2> /dev/null; pkill -RTMIN+15 "${STATUSBAR:-dwmblocks}" ;;
esac

prompt="$(spotifyc -f '{{ icon }} {{ artist }}: {{ title }}' -i '' '' -o )"

if [ ${#prompt} -gt 35 ]; then
    truncated=$(echo "$prompt" | cut -c1-35)
    echo "^c#fb4934^$truncated..."
else
    echo "^c#fb4934^$prompt"
fi

