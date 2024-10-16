#!/bin/bash
# Loop through all network interfaces
for iface in $(ls /sys/class/net); do
    # Check if the interface is up and has carrier
    if [[ $(cat /sys/class/net/$iface/operstate) == "up" ]] && [[ -e /sys/class/net/$iface/carrier && $(cat /sys/class/net/$iface/carrier) -eq 1 ]]; then
        echo "$iface"
    fi
done
