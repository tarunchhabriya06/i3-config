\#!/bin/sh

sed " /#/ d; /set/ d; /gaps/ d; /hide/ d; /new/ d; /font/ d; /floating/ d; /^\$/ d; /\^exec/ d; /XF86/ d; /px/ d; /default/ d; /{/ d; /}/ d; s/bindsym//; s/\\\\$//; s/--no-startup-id//"  ~/.config/i3/config | rofi -dmenu | awk '{ $1=""; print }' | xargs -r i3-msg
