#/bin/bash
sudo rfkill unblock bluetooth &&
 
bluetoothctl -- power off
bluetoothctl -- power on

bluetoothctl -- connect   B8:F6:53:21:FF:C1


#echo -e 'power on\nconnect  41:42:31:54:76:DB \nquit' | bluetoothctl

