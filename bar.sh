. "${HOME}/.cache/wal/colors.sh"

Clock() {	
	echo $(date "+%H:%M %Y-%m-%d")
}

Battery() {
	echo $(cat /sys/class/power_supply/BAT0/status), $(cat /sys/class/power_supply/BAT0/capacity)%
}

Workspaces() {
	ACTUAL=$(xprop -root _NET_CURRENT_DESKTOP | awk '{print $3}')
	case $ACTUAL in
		0)
			echo -n "%{F$color7}I%{F$color3} II III IV V%{F$color7}"
		;;

		1)
			echo -n "%{F$color3}I%{F$color7} II%{F$color3} III IV V%{F$color3}"
		;;

		2)
			echo -n "%{F$color3}I II%{F$color7} III%{F$color3} IV V%{F$color7}"
		;;
		3)
			echo -n "%{F$color3}I II III%{F$color7} IV %{F$color3}V%{F$color7}"
		;;

		4)
			echo -n "%{F$color3}I II III IV %{F$color7} V%{F$color7}"
		;;
	esac
}

while true; do
	echo "%{l} $(Workspaces) %{c} $(Clock) %{r} $(Battery)"
	sleep 0.1
done
