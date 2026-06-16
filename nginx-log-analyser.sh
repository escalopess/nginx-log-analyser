#!/bin/bash



cd /home/ubuntu/scripts/nginx-log-analyser

echo ""
echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' nginx-access.log.txt | sort | uniq -c | sort -nr |  head -n 5 | awk '{print $2 " - " $1 " requests"}'
echo ""

echo "Top 5 most requested paths:"
awk '{print $7}' nginx-access.log.txt | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'
echo ""

echo "Top 5 response status codes:"
awk '{print $9}' nginx-access.log.txt | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'
echo ""

echo "Top 5 user agents status:"
awk -F\" '{print $6}' nginx-access.log.txt | sort | uniq -c | sort -nr | head -n 5 
