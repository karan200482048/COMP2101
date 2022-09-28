#!/bin/bash

echo "Report for myvm"
echo "==============="

# FQDN
fullyQDM=$(hostname)
echo "FQDN: $fullyQDM"

# Operating System name and version
osNameAndVersion=$(hostnamectl | grep -h "Operating")
echo "$osNameAndVersion"

# IP Address
internetProtocols=$(hostname -i | awk '{print $1}')
echo "IP Address: $internetProtocols"

# Root Filesystem Free Space
freeSpaceAvailable=$(df / -h | grep "/dev/sda" | awk '{print $4}')  
echo "Root Filesystem Free Space: $freeSpaceAvailable"
echo "==============="