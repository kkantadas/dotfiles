
for the display sleeping and wakening make xorg.conf file with "Xorg :0 -configure" if it is not in /etc/X11/xorg.conf , that will generate a xorg.conf file in /root , copy to the right place in etc/X... and add to the 'Section "ServerLayout"' 
 Option "BlankTime" "60" # this is in minutes like 60 min
 Option "StandbyTime" "0"
 Option "SuspendTime" "0"
 Option "OffTime" "0"

https://suckless.org/

