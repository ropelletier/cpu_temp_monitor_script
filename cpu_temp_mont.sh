#!/bin/bash
# Simple NUC 7th Gen CPU Temp Monitor Script

echo "Monitoring CPU Temperature..."
echo "Press Ctrl+C to stop."

while true; do
    # Get temperature for each core (adjust pattern if needed for your NUC)
    # Common patterns: "Package id 0", "Core 0", "Tdie"
    TEMP_INFO=$(sensors | grep -E 'Package id 0|Core 0|Tdie' | awk '{print $4}' | tr -d '+')
    
    echo -n "Current Temps: "
    echo "$TEMP_INFO"
    
    sleep 2 # Check every 2 seconds
done
