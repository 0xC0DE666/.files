#!/bin/sh

intern=eDP-1
extern=HDMI-1

hdmi_in=`xrandr | grep "$extern connected"`

if [ ${#hdmi_in} -gt 0 ] ; then
    echo "HDMI-1 connected"
    xrandr --output $extern --primary --mode 1920x1080 --rate 74.97 --left-of eDP-1
else
    echo "HDMI-1 not connected"
    xrandr --output $intern --auto --mode 1920x1080 --rate 60.01 --output $extern --off 
fi
