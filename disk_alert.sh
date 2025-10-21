#!/bin/bash
THRESHOLD=80
USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//g')  # Get disk usage %
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk usage critical: $USAGE%" 
    else
    echo "Disk usage is normal: $USAGE%"
fi
