#!/bin/bash
#Initialize shell.
#include color for output
source $(dirname $0)/color.sh
clear

#Apache Bench
abTest() {
    #Confirm everything is ok.
    a="Everything look ok?\n"
    b="Requests: $1\n"
    c="Concurrency: $2\n"
    d="URL: $3\n"
    e="Log: $4\n"
    read -p "$(echo -e $a$b$c$d$e[y/n]:)" CONFIRM
    CONFIRM=${CONFIRM:n}
    if [[ "$CONFIRM" = "y" ]]
        then
            out "Starting Apache Bench Load Test" 'info'
            #Run Test.
            ab -n $1 -c $2 $3 > $4
            if [ $? -eq 0 ]
              then
                out "Load Test Finished." 'success'
              else
                out "Load Test Failed." 'error'
            fi
        else
        out "Aborting" 'warning'
    fi
}

#BWMG
beesTest() {
    if [ -z "$1" ]
        then
        out "No servers supplied. Please enter the amount of servers" 'error'
        else
        #Confirm everything is ok.
        read -p "$MESSAGE" CONFIRM
        if [[ "$CONFIRM" = "y" ]]
            then
                #Run Test.
                out "Starting Bees With Machine Guns Test" 'info'
            else
            out "Aborting" 'info'
        fi
    fi
}

#Check that we have a basic syntax
if [ -z "$1" ]
  then
    out "No Requests supplied, please enter the number of requests to supply." 'error'
    exit 0
  else
    if [ -z "$2" ]
      then
        out "No concurrency supplied. Please enter the number of concurrent requests to make." 'error'
        exit 0
      else
        #If we get this far, ask which type of load test we are running.
        read -p "Which Test Do you want to run? [ab|bees] (default = ab): " TYPE
        TYPE=${TYPE:-ab}
        out "'$TYPE' selected." 'info'
        #URL
        read -p "Which url do you want to test?: " URL
        REGEX='(https?)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
        if [[ $URL =~ $URL ]]
            then
                #Date
                FULLDATE=`date`
                NOW=`date +%m%d%Y%H%M%S`
                #Ask where you want to put the output file
                read -p "Where do you want to output this log? (default = /var/log/load-test-$NOW.log): " OUTPUT
                OUTPUT=${OUTPUT:-"/var/log/load-test-$NOW.log"}
                if [[ "$OUTPUT" = /* ]]
                    then
                        #Switch by type, after we have assembled everything
                        case "$TYPE" in
                            ab)
                                abTest $1 $2 $URL $OUTPUT
                                ;;
                            bees)
                                #Ask for AWS Specific items.
                                beesTest $1 $2 $3 $URL $OUTPUT
                                ;;
                        esac
                    else
                        out "Could not continue, please use an absolute directory, or start with /." 'error'
                        exit 0
                fi
            else
                out "Invalid url supplied, please try again." 'error'
                exit 0
        fi
    fi
fi