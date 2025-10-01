#!/bin/bash

# Create network report
ip a > ~/network_report.txt
echo "--- Routing Table ---" >> ~/network_report.txt
ip route >> ~/network_report.txt
echo "--- DNS Configuration ---" >> ~/network_report.txt
cat /etc/resolv.conf >> ~/network_report.txt
echo "--- Connectivity Test ---" >> ~/network_report.txt
ping -c 4 google.com >> ~/network_report.txt
echo "--- Open Ports ---" >> ~/network_report.txt
netstat -tuln | head -10 >> ~/network_report.txt
echo "--- DNS Resolution ---" >> ~/network_report.txt
nslookup google.com >> ~/network_report.txt
echo "--- Network Statistics ---" >> ~/network_report.txt
ss -s >> ~/network_report.txt
