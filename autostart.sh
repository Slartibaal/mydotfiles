#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}
run dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
run autorandr --output VGA-1 --primary --mode 1400x900 --pos240x1080 --rotate normal --output DVI-D-1 -- off --output DVI-D-2 --off --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
#autorandr horizontal
run nm-applet
#run caffeine
run pamac-tray
#run variety
run xfce4-power-manager
run blueberry-tray
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
run volumeicon
#run nitrogen --restore
run conky -c $HOME/.conkyrc
#you can set wallpapers in themes as well
#feh --bg-fill --randomize  ~/Downloads/WP/wp2/*.*
feh --bg-fill --randomize /media/MEDIA/WP/Downloaded/*/*.*
#feh --bg-fill  ~/Downloads/randImages/neon.jpg
#feh --bg-fill /usr/share/backgrounds/arcolinux/galaxy-2560x1600.png &
#run applications from startup
#run firefox
#run atom
#run dropbox
#run insync start
#run spotify
#run ckb-next -b
#run discord
#run telegram-desktop
run /usr/lib/kdeconnectd
run kdeconnect-indicator
run mailspring --b
run mpd
run mw -y stevensino1@gmail.com
