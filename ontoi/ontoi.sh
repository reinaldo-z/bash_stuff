#!/bin/bash

red='\e[0;31m'
RED='\e[1;31m'
blue='\e[0;34m'
BLUE='\e[1;34m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
NC='\e[0m' # No Color
function Line {
printf "\t${cyan}--------------------${NC}\n"
}

case=`echo $PWD | awk -F / '{print$NF}'` #<-------- devuelve nombre directorio de trabajo sin la ruta
case_="`echo $case`_"
name=`whoami` #<-------- nombre de usuario

if [ "$#" -eq 0 ]
    then   # Script needs at least one command-line argument.
    Line
    printf "\t${blue}gets data from logfile${NC}\n"
    printf "\t${blue}Usage:\n${NC}"
    printf "\tontoi.sh [${red}1${NC}]-estimated time [${red}2${NC}]-whole logfile [${red}3${NC}]-tail of logfile \n" 
    printf "\t\t[${red}4${NC}]-save tail of logfiles in ./logfiles_tails"
   Line
exit 1
fi

if [ ! "$#" -eq 0 ]
then
    option=$1
    declare -a cases=(`less .machines_pmn`)
    L=0
    for i in ${cases[@]}; do
		L=`expr $L + 1`
			if [ "$option" -eq 1 ]; then
		    printf "\t$i $case_$L\n"
		    ssh $i "grep 'estimated' /data/$name/workspace/$name/$case_$L/logfile"
		fi

		if [ "$option" -eq 2 ]; then
		    Line
		    printf "\t$i $case_$L\n"
		    ssh $i "more /data/$name/workspace/$name/$case_$L/logfile"
		fi
		
		if [ "$option" -eq 3 ]; then
		    Line
		    printf "\t$i $case_$L\n"
		    ssh -t $i "tail /data/$name/workspace/$name/$case_$L/logfile"
		fi

    	if [ "$cual" -eq 4 ]; then
    		printf "\t################################\n" >> logfiles_tails
	    	printf "\t# $( date ) ##\n" >> logfiles_tails
	    	printf "\t################################\n\n" >> logfiles_tails
	    	printf "\t$i $case_$L\n" >> logfiles_tails
	    	tail_log=`ssh $i "tail /data/$name/workspace/$name/$case_$L/logfile"`
	    	tail_log "$printf" >> logfiles_tails
    	fi

    done
fi