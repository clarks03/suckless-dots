# My dwm build

### Patches

- attachbottom
    - New clients attach at the bottom of the stack instead of the top.
- cfacts
    - allows each client to have its own weight (height)
    - bundled with vanitygaps patch
- vanitygaps
    - allows for customization of veritcal/horizontal inner/outer gaps.
- colorbar
    - allows for different foreground, background colors for different parts of the dwm bar (workspaces, info, status)
- movestack
    - allows you to move a client up and down the stack
- refreshrate
    - removes the move/resize limitation; makes animations look a lot smoother
- status2d
    - allows for drawing rudimentary graphics and changing foreground/background colour in the statusbar
- systray
    - shows a system tray in the top-right (or top-left) of the status bar
    - bundled with status2d patch
- statuscmd 
    - allows for signalling a status bar (in this case, dwmblocks) via. mouse clicks
    - manually tweaked for compatibility with systray
- xrdb
    - gets colourscheme from xrdb
- osu! "patch"
    - allows for alt-tabbing from fullscreen applications (like games) without the game crashing

**NOTE:** If you are planning on patching your own dwm based on these patches, do take a look at the patches themselves beforehand. Some of them have special versions depending on patches you've already applied (for example, statuscmd has a special patch in case you've already downloaded status2d first, which is recommended).
