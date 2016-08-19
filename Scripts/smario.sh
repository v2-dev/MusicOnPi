#!/bin/bash

DO4=48
DOC4=49
RE4=50
REC4=51
MI4=52
FA4=53
FAC4=54
SOL4=55
SOLC4=56
LA4=57
LAC4=58
SI4=59
DO5=60
DOC5=61
RE5=62
REC5=63
MI5=64
FA5=65
FAC5=66
SOL5=67
SOLC5=68
LA5=69
LAC5=70
SI5=71
DO6=72
DOC6=73

l1=0.10
l2=0.15
l3=0.25

tone () {
  local note="$1" 
  local duration="$2"
  if test "$note" -eq 0; then
    gpio -g mode 18 in
  else
    local period=$(python -c "print '{0:.0f}'.format(600000.0/440.0/2**(($note-69)/12.0))")
    gpio -g mode 18 pwm
    gpio pwmr "$(( period ))"
    gpio -g pwm 18 "$(( period/2 ))"
    gpio pwm-ms
    sleep $duration
    tone 0
  fi
}


tone $MI5 $l1;
tone $MI5 $l1;
sleep $l1;
tone $MI5 $l1;
sleep $l1;
tone $DO5 $l1;
tone $MI5 $l1;
sleep $l1;
tone $SOL5 $l1;
sleep $l1;
sleep $l3;
tone $SOL4 $l1;
sleep $l1;
sleep $l3;
tone $DO5 $l1;
sleep $l1;
sleep $l1;
tone $SOL4 $l1;
sleep $l3;
tone $MI4 $l1;
sleep $l1;
sleep $l1;
tone $LA4 $l1;
sleep $l1;
tone $SI4 $l1;
sleep $l1;
tone $LAC4 $l1;
tone $LA4 $l1;
sleep $l1;
tone $SOL4 $l2;
tone $MI5 $l2;
tone $SOL5 $l2;
tone $LA5 $l1;
sleep $l1;
tone $FA5 $l1;
tone $SOL5 $l1;
sleep $l1;
tone $MI5 $l1;
sleep $l1;
tone $DO5 $l1;
tone $RE5 $l1;
tone $SI4 $l1;
sleep $l3;
tone $DO5 $l1;
sleep $l1;
sleep $l1;
tone $SOL4 $l1;
sleep $l3;
tone $MI4 $l1;
sleep $l1;
sleep $l1;
tone $LA4 $l1;
sleep $l1;
tone $SI4 $l1;
sleep $l1;
tone $LAC4 $l1;
tone $LA4 $l1;
sleep $l1;
tone $SOL4 $l2;
tone $MI5 $l2;
tone $SOL5 $l2;
tone $LA5 $l1;
sleep $l1;
tone $FA5 $l1;
tone $SOL5 $l1;
sleep $l1;
tone $MI5 $l1;
sleep $l1;
tone $DO5 $l1;
tone $RE5 $l1;
tone $SI4 $l1;
sleep $l3;
sleep $l3;
tone $SOL5 $l1;
tone $SOL5 $l1;
tone $FA5 $l1;
tone $REC5 $l1;
sleep $l1;
tone $MI5 $l1;
sleep $l1;
tone $SOLC4 $l1;
tone $LA4 $l1;
tone $DO5 $l1;
sleep $l1;
tone $LA4 $l1;
tone $DO5 $l1;
tone $RE5 $l1;
sleep $l3;
tone $SOL5 $l1;
tone $SOL5 $l1;
tone $FA5 $l1;
tone $REC5 $l1;
sleep $l1;
tone $MI5 $l1;
sleep $l1;
tone $DO6 $l1;
sleep $l1;
tone $DO6 $l1;
tone $DO6 $l1;
sleep $l1;
sleep $l3;
sleep $l3;
tone $SOL5 $l1;
tone $SOL5 $l1;
tone $FA5 $l1;
tone $REC5 $l1;
sleep $l1;
tone $MI5 $l1;
sleep $l1;
tone $SOLC4 $l1;
tone $LA4 $l1;
tone $DO5 $l1;
sleep $l1;
tone $LA4 $l1;
tone $DO5 $l1;
tone $RE5 $l1;
sleep $l3;
tone $REC5 $l1;
sleep $l1;
sleep $l1;
tone $RE5 $l1;
sleep $l1;
tone $DO5 $l1;
sleep $l1;
sleep $l3;
sleep $l3;



