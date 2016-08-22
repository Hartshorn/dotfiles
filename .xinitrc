#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then

    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then

    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


######DWM STATUSBAR############

#xset +fp /usr/share/fonts/local/

while true; do

# Power/Battery Status
if [ "$( cat /sys/class/power_supply/AC0/online )" -eq "1" ]; then
        DWM_BATTERY=$(( `cat /sys/class/power_supply/BAT0/energy_now` * 100 / `cat /sys/class/power_supply/BAT0/energy_full` ));
else
        DWM_BATTERY=$(( `cat /sys/class/power_supply/BAT0/energy_now` * 100 / `cat /sys/class/power_supply/BAT0/energy_full` ));
fi;

# Wi-Fi eSSID
DWM_ESSID=$( /sbin/iwgetid -r ); 

# AnsiWeather script - modified / simplified version for chicago
# to change the city, change ~/.ansiweatherrc
DWM_WEATHER=`~/scripts/ansiweather/ansiweather`

# Volume Level
DWM_VOL=$( amixer -c0 sget Master | awk -vORS=' ' '/Mono:/ {print($6$4)}' );

# Date and Time
DWM_CLOCK=$( date '+%l:%M' );
DWM_DATE=$( date '+%e %b %Y %a' );

# Overall output command
DWM_STATUS="$DWM_CLOCK   |   $DWM_WEATHER |   $DWM_BATTERY%   $DWM_ESSID   $DWM_VOL   $DWM_DATE   ";


xsetroot -name "$DWM_STATUS";
sleep 1m;

done &

###########END#################

exec dwm


