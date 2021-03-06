#!/bin/bash
# Help Items.
# Usage: make help
source $(dirname $0)/color.sh
clear
#Intro
out "The following commands are available for use, however:" 'info'
out "USE WITH CAUTION!" 'warning'
out "NEVER RUN THIS ON A PRODUCTION SERVER!" 'warning'
out "WE ARE NOT RESPONSIBLE FOR YOUR TESTING!" 'warning'
echo ""
out "Usage: make help"
out "Description:"
out "\tShows this help file, but you already know that now."
echo ""
out "Usage: make simple-load-test"
out "Description:"
out "\tRuns a load test, using AB or Bees. Defaults To Apache."
out "\tThis is good for when you set something up, and want to do a quick test."
out "\tIf using apache, runs this command: ab -k -n 100 -c 10 %your-url."
out "\tIf using bees, runs this set of commands:"
out "\tbees up -s 1 -g %your-security-group -k %your-pem-key"
out "\tbees attack -n 100 -c 10 -u %your-url"
out "\tbees down"
echo ""
out "Usage: make load-test"
out "Description:"
out "\tRuns a load test, using AB or Bees. Defaults To Apache."
out "\tThis is good for testing light load on a server."
out "\tIf using apache, runs this command: ab -k -n 1000 -c 100 %your-url."
out "\tIf using bees, runs this set of commands:"
out "\tbees up -s 2 -g %your-security-group -k %your-pem-key"
out "\tbees attack -n 1000 -c 100 -u %your-url"
out "\tbees down"
echo ""
out "Usage: make medium-load-test"
out "Description:"
out "\tRuns a load test, using AB or Bees. Defaults To Apache."
out "\tThis is good for testing average load on a server."
out "\tIf using apache, runs this command: ab -k -n 10000 -c 250 %your-url."
out "\tIf using bees, runs this set of commands:"
out "\tbees up -s 4 -g %your-security-group -k %your-pem-key"
out "\tbees attack -n 10000 -c 250 -u %your-url"
out "\tbees down"
echo ""
out "Usage: make high-load-test"
out "Description:"
out "\tRuns a load test, using AB or Bees. Defaults To Apache."
out "\tThis is good for testing a little higher than average load on a server."
out "\tIf using apache, runs this command: ab -k -n 10000 -c 500 %your-url."
out "\tIf using bees, runs this set of commands:"
out "\tbees up -s 4 -g %your-security-group -k %your-pem-key"
out "\tbees attack -n 10000 -c 500 -u %your-url"
out "\tbees down"
echo ""
out "Usage: make heavy-load-test"
out "Description:"
out "\tRuns a load test, using AB or Bees. Defaults To Apache."
out "\tThis is good for testing heavy load on a server."
out "\tIf using apache, runs this command: ab -k -n 20000 -c 1000 %your-url."
out "\tIf using bees, runs this set of commands:"
out "\tbees up -s 6 -g %your-security-group -k %your-pem-key"
out "\tbees attack -n 20000 -c 1000 -u %your-url"
out "\tbees down"
echo ""
#Outro
out "USE WITH CAUTION!" 'warning'
out "NEVER RUN THIS ON A PRODUCTION SERVER!" 'warning'
out "WE ARE NOT RESPONSIBLE FOR YOUR TESTING!" 'warning'