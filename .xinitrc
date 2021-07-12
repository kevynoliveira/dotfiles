setxkbmap -layout br -model thinkpad60 &
xinput set-prop "TPPS/2 IBM TrackPoint" "libinput Accel Speed" -0.6 &
xinput set-prop "MOSART Semi. 2.4G Wireless Mouse" "libinput Accel Speed" -0.3 &
xsetroot -cursor_name left_ptr &
exec bspwm
