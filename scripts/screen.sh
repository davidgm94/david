#!/bin/sh
if [ "$HOSTNAME" = "david-desk" ] ; then
    MY_PRIMARY_MONITOR=HDMI-0
    MY_SECONDARY_MONITOR=DVI-D-0
    xrandr --output $MY_PRIMARY_MONITOR --primary --mode 1920x1080 --pos 0x0 --rotate normal --output $MY_SECONDARY_MONITOR --right-of $MY_PRIMARY_MONITOR --mode 1920x1080 --pos 1920x0 --rotate normal --output DP-0 --off --output DP-1 --off  --output DP-2 --off --output DP-3 --off --output DP-4 --off --output DP-5 --off
elif [ "$HOSTNAME" = "david-vm" ] ; then
    MY_PRIMARY_MONITOR=HDMI-0
    MY_SECONDARY_MONITOR=DVI-D-0
    xrandr --output Virtual1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output Virtual2 --off --output Virtual3 --off --output Virtual4 --off --output Virtual5 --off --output Virtual6 --off --output Virtual7 --off --output Virtual8 --off
fi
