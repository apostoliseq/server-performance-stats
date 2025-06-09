#!/bin/bash

# You should be able to run the script on any Linux server and it should give you the following stats:

#     Total CPU usage
echo "CPU Usage: "$[100-$(vmstat 1 2|tail -1|awk '{print $15}')]"%"

#     Total memory usage (Free vs Used including percentage)
# free -h
#     Total disk usage (Free vs Used including percentage)
#     Top 5 processes by CPU usage
#     Top 5 processes by memory usage

# Stretch goal: Feel free to optionally add more stats such as os version, uptime, load average, logged in users, failed login attempts etc.