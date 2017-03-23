
xmodmap ~/.Xmodmap &
nitrogen --restore &

# launch dwm
dwmstatus &
exec dwm

# launch rio
#plumber &
#exec /usr/local/plan9/bin/rio -launcher "dmenu_run" -virtuals 2
