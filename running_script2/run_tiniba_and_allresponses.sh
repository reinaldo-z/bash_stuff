#!/bin/bash

declare -a kpts=(14452)

for i in ${kpts[@]}; do

################## RUN TINIBA ##################
	run_tiniba.sh -r setkp -k "$i"
	printf "w started at $( date ) \n" >> .completed
		run_tiniba.sh -r run -k "$i" -N 0 -x 2 -e -p -s
	printf "finished at: $( date )\n #####\n" >> .completed

################## RUN ALL RESPONSES ##################
	printf "all_responses.sh $i kpts -r 1 -t xx yy zz    started at $( date ) \n" >> .completed
			all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v 18 -c 42 -r 1 -t "xx yy zz"
	printf "finished at: $( date )\n" >> .completed

	printf "all_responses.sh $i kpts -r 3 -t xxy yxy zxy    started at $( date ) \n" >> .completed
			all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v 18 -c 42 -r 3 -t "xxy yxy zxy"
	printf "finished at: $( date )\n" >> .completed

	printf "all_responses.sh $i kpts -r 41 -t xxy yxy zxy    started at $( date ) \n" >> .completed
			all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v 18 -c 42 -r 41 -t "xxy yxy zxy"
	printf "finished at: $( date )\n" >> .completed
	
