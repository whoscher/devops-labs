#!/bin/bash
SERVICE="Dock"
if pgrep -x "$SERVICE" > /dev/null
then 
	echo "$(date) - $SERVICE is UP" >> monitor.log
else
	echo echo "$(date) - $SERVICE is DOWN" >> monitor.log
fi
cat monitor.log
