#!/bin/bash

if [ "x$1" = "x" ];then
    echo "$0 <commit message>"
    exit 1
fi

command() {
 if [ -d $1 ];then
   cd $1
   echo ""
   echo "entering directory $1.." 
   if [ -x $2 ];then
     ./$2 "$3"
   else
     echo "error. $2 is not executable"
   fi
   cd ..
 else
   echo "error. directory $1 does not exist"
 fi
 
} 


                
command agronet-database updb.sh "$1"
command agronet-files/ _push.sh "$1"
command agronet-libraries/ _push.sh "$1"
command agronet-modules/ _push.sh "$1"
command agronet-profile/ _push.sh "$1"
command agronet-theme/ _push.sh "$1"
command agronet-database/ _push.sh "$1"
command agronet-harvester/ _push.sh "$1"
command agronet/ _push.sh "$1"
