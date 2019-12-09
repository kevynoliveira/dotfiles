#!/bin/sh

Clock()
{ 
	echo $(date "+%H:%M")
}

Date()
{
	echo $(date "+%Y-%m-%d")
}

Battery()
{
	echo $(cat /sys/class/power_supply/BAT0/status), $(cat /sys/class/power_supply/BAT0/capacity)%
}

while true; do
      xsetroot -name "$(Battery) | $(Date) | $(Clock)" 
      sleep 60
done 
