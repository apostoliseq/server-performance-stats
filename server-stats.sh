#!/bin/bash

# You should be able to run the script on any Linux server and it should give you the following stats:

#     Total CPU usage
echo "CPU Usage: "$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%"

#     Total memory usage (Free vs Used including percentage)
echo "Total Memory Usage: "$(free -h| awk '$1 == "Mem:" {print "total:"$2" " "used:"$3" " "free:"$4}')""
echo "Used Memory:"$(free| awk '$1 == "Mem:" {print $3/$2 * 100 "%"}')""
echo "Free Memory:"$(free| awk '$1 == "Mem:" {print $4/$2 * 100 "%"}')""
#     Total disk usage (Free vs Used including percentage)
#     Top 5 processes by CPU usage
#     Top 5 processes by memory usage

# Stretch goal: Feel free to optionally add more stats such as os version, uptime, load average, logged in users, failed login attempts etc.