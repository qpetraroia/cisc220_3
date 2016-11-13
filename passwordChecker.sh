#!/bin/bash
# Marissa Huang - 10179169
# Deven Bernard - 10099810
# Kevin Zuern - 10134425
# Quentin Petraroia - 10145835


reg=[0-9]
specialChar=[@#$%'&''*''='+-]
count=0
echo "please enter a password "
read -s passWord
if [ ${#passWord} -ge 8 ];
   then
       ((count++))
fi
if [[ $passWord =~ $reg ]];
   then
       ((count++))
fi
if [[ $passWord == *$specialChar* ]];
   then
      ((count++))
fi
if [ $count -eq 1 ];
   then
       echo Weak
fi
if [ $count -eq 2 ];
   then
       echo Moderate
fi
if [ $count -eq 3 ];
   then
      echo Strong
fi
