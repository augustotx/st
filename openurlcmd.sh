#!/bin/sh

# path:       ~/projects/st/openurlcmd.sh
# author:     klassiker [mrdotx]
# github:     https://github.com/mrdotx/st
# date:       2020-02-03T13:48:16+0100

regex='(((http|https|ftp|gopher)|mailto)[.:][^ >"\t]*|www\.[-a-z0-9.]+)[^ .,;\t>">\):]'
url=$(grep -Po "$regex" | rofi -monitor -2 -theme klassiker-vertical -dmenu -i -p "Follow which url?:" -w "$WINDOWID" -l 5) || exit
$BROWSER "$url" & notify-send "$TERMINAL" "URL: $url\nopen in $BROWSER"
