#! /bin/bash

NC="\e[0m"
echo -en "  "
for col in `seq 30 39`; do
  echo -en "$col $(($col + 60)) "
done
echo
for i in `seq 1 5`; do
  echo -en "${i} "
  for col in `seq 30 39`; do # 39`; do
  
    c1="\e[${i};${col}m"
    c2="\e[${i};$((col+60))m"
    term="${c1}\u2588\u2588|${NC}${c2}\u2588\u2588|${NC}"
    echo -en "$term"
  done
  echo -en "\n"
done

echo -en "\n  "

for col in `seq 40 47`; do # 47 => 200
  echo -n "$col $(($col + 60)) "
done

echo

for i in `seq 1 5`; do
 echo -en "${i} "
 
  for col in `seq 40 47`; do

    c1="\e[${i};${col}m"
    c2="\e[${i};$((col+60))m"
    term="${c1}.X.${NC}${c2}.X.${NC} "
    echo -en "$term"
  done
  echo -en "\n"
done
