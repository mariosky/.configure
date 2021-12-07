#!/bin/bash

#LAYOUT=$(setxkbmap -query | awk '/layout/{print $2}')
INTL=$(setxkbmap -query | awk '/variant/{print $2}')

echo "us $INTL" 
