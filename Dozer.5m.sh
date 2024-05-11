#!/bin/bash
# Useful example:
#   https://github.com/matryer/bitbar-plugins/blob/master/Time/ts-convert.sh

if [[ "$1" = "STOP_Chrome" ]]; then
    /usr/bin/killall  -STOP "Google Chrome" "Google Chrome Helper"
    osascript -e "display notification \"SLEEP Google Chrome\" with title \"ChromeDoze\"" &> /dev/null
    exit
fi
if [[ "$1" = "CONT_Chrome" ]]; then
    /usr/bin/killall  -CONT "Google Chrome" "Google Chrome Helper"
    osascript -e "display notification \"WAKEN Google Chrome\" with title \"ChromeDoze\"" &> /dev/null
    exit
fi

if [[ "$1" = "STOP_QuickTime" ]]; then
    /usr/bin/killall  -STOP "QuickTime Player"
    osascript -e "display notification \"SLEEP QuickTime Player\" with title \"QuickTimeDoze\"" &> /dev/null
    exit
fi
if [[ "$1" = "CONT_QuickTime" ]]; then
    /usr/bin/killall  -CONT "QuickTime Player"
    osascript -e "display notification \"WAKEN Google Chrome\" with title \"QuickTimeDoze\"" &> /dev/null
    exit
fi


#echo "ᕳᕲ| color=orange" # http://www.unicodemap.org/range/33/Unified_Canadian_Aboriginal_Syllabics/
echo "😴"

echo "---"
echo "🔗 SLEEP Chrome | color=orange terminal=false bash=$0 param1=STOP_Chrome terminal=false"
echo "🔗 WAKEN Chrome | color=green terminal=false bash=$0 param1=CONT_Chrome terminal=false"
# echo "copy $NOORON_NOW to clipboard | color=grey bash=$0 param1=SHOW_NOORON_NOW terminal=false"
echo "🎥 SLEEP QuickTime | color=orange terminal=false bash=$0 param1=STOP_QuickTime terminal=false"
echo "🎥 WAKEN QuickTime | color=green terminal=false bash=$0 param1=CONT_QuickTime terminal=false"
