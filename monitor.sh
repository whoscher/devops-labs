#!/bin/bash

# Если мы передали имя сервиса при запуске - этот сервис будет использоваться, если нет- ,будет bash

SERVICE=${1:-"bash"}

if pgrep -x "$SERVICE" > /dev/null
then 
	echo "$(date) - $SERVICE is UP" >> monitor.log
else
	echo "$(date) - $SERVICE is DOWN" >> monitor.log
fi
cat monitor.log
