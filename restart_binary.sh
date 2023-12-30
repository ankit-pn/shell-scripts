#!/bin/bash

BINARY="path_of_binary"
LOG_FILE="path_of_log_file"

while true; do
    if ! pgrep -f $BINARY > /dev/null; then
        echo "$(date): Binary stopped, restarting..."  >> $LOG_FILE
        $BINARY >> $LOG_FILE 2>&1 &
    fi
    sleep 1
done
