export XDG_RUNTIME_DIR=/tmp
xrdb -I$HOME ~/.Xresources
exec feh --bg-center ~/.config/wall.jpg &
exec xxkb &
exec i3 
