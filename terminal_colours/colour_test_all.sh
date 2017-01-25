#!/bin/bash
 
# This program is free software. It comes without any warranty, to
# the extent permitted by applicable law. You can redistribute it
# and/or modify it under the terms of the Do What The Fuck You Want
# To Public License, Version 2, as published by Sam Hocevar. See
# http://sam.zoy.org/wtfpl/COPYING for more details.
# 
# Edits have then been made by tmck-code under the same license

NC="\e[0m"

#Background
for bg in {40..47} {100..107} 49 ; do
  #Foreground
  echo $bg
  echo -en "   "
  for i in 0 1 2 4 5 7 ; do
    echo -en "     ${i}   "
  done
  echo
  for fg in {30..37} {90..97} 39 ; do
    #Formatting
    echo -en " ${fg} "
    for attr in 0 1 2 4 5 7 ; do
      colour="\e[${attr};${bg};${fg}m"
      echo -en "${colour}xl\u2588\u2588\u2588\u2588\u2588\u2588|${NC}"
    done
    echo
  done
  echo -e "\n"
done

exit 0
