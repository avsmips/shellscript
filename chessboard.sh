#! /bin/bash	
clear
for (( i = 1; i <= 9; i++ )) ### Outer for loop ###
do
   for (( j = 1 ; j <= 9; j++ )) ### Inner for loop ###
   do
        tot=`expr $i + $j`
        tmp=`expr $tot % 2`
        if [ $tmp -eq 0 ]; then
            echo -e -n "\033[47m\033[47m "
        else
            echo -e -n "\033[40m\033[40m "
        fi
  done
 echo -e -n "`tput sgr0`" #### set back background colour to black
 echo "" #### print the new line ###
done
