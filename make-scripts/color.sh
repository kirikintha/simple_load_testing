#!/bin/bash
#Color function for bash output
function out {

  DATE=$(date "+%m-%d-%Y %r")
  
  case "$2" in
    #Cyan = Info
    "info")
    echo -e "\033[0;36m$1\033[0m"
    ;;
    #Green = Success
    "success")
    echo -e "\033[0;32m$1\033[0m"
    ;;
    #Yellow = Warning
    "warning")
    echo -e "\033[0;33m$1\033[0m"
    ;;
    #Red = Error
    "error")
    echo -e "\033[0;31m$1\033[0m"
    ;;
    #Default
    *)
    echo -e "$1"
  esac
  
}