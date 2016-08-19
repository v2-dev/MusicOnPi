#!/bin/bash

tone () {
  local note="$1"
  local duration="$2"
  local pin="$3"
  if test "$note" -eq 0; then
    gpio -g mode $pin in
  else
    local period=$(python -c "print '{0:.0f}'.format(600000.0/440.0/2**(($note-69)/12.0))")
    gpio -g mode $pin pwm
    gpio pwmr "$(( period ))"
    gpio -g pwm $pin "$(( period/2 ))"
    gpio pwm-ms
    sleep $duration
    tone 0
  fi
}

#@TODO: read here the GPIO pin---> read -r -n 1 pin
duration=0.1
while :
do
    read -r -n 1 key
    case "$key" in
        q) note=55;;
        2) note=56;;
        w) note=57;;
        3) note=58;;
        e) note=59;;
        r) note=60;;
        5) note=61;;
        t) note=62;;
        6) note=63;;
        y) note=64;;
        u) note=65;;
        8) note=66;;
        i) note=67;;
        9) note=68;;
        o) note=69;;
        0) note=70;;
        p) note=71;;
	    z) duration=0.1;;
 	    x) duration=0.5;;
	    c) duration=1.0;;

    esac
    tone $note $duration $pin
done
