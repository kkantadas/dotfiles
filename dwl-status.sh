#!/bin/sh

tempfile=/sys/class/hwmon/hwmon2/temp1_input

while :; do
	center="$(date '+%a %H:%M')"
	net="$(netstatus.sh 2>/dev/null | tr -d '\n')"
	cpu="$(awk '/cpu / { print int(($2 + $4) * 100 / ($2 + $4 + $5)) }' /proc/stat)"
	mem="$(free -h | awk '/Mem:/ { print $3 }')"

	if [ -r "$tempfile" ]; then
		temp="$(awk '{ print int($1 / 1000) }' "$tempfile")"
	else
		temp="n/a"
	fi

	right="[ ${net:-down} ] [  ${cpu}%   ${mem} ] [  ${temp}°C ]"
	printf '%s\t%s\n' "$center" "$right"
	sleep 5
done
