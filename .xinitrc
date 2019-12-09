setxkbmap -layout br -model thinkpad60 &
xinput set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" -0.6 &
xinput set-prop "Logitech G Pro Gaming Mouse" "libinput Accel Speed" -0.75 &
compton &
sxhkd &
sh ~/.fehbg &
sh ~/dotfiles/dwmbar.sh &
exec dwm
