#!/bin/bash

declare -a kpts=(1802 2452 4052 5002)

for i in ${kpts[@]}; do
	run_tiniba.sh -r setkp -k "$i"
	printf "-e -p -s for $i -kpts started at $( date ) \n" >> completed_all_responses
		run_tiniba.sh -r run -k "$i" -N 0 -x 2 -e -p -s
	printf "finished at: $( date )\n #####\n" >> completed_all_responses
done

declare -a cases=(1802_25-spin 2452_25-spin 4052_25-spin 5002_25-spin)

for i in ${cases[@]}; do
	all_responses.sh -w total -m "$i" -s 0 -o 1 -v 18 -c 18 -r 41 -t "xxy yxy zxy"
	all_responses.sh -w total -m "$i" -s 0 -o 1 -v 18 -c 18 -r 3 -t "xxy yxy zxy"
	all_responses.sh -w total -m "$i" -s 0 -o 1 -v 18 -c 18 -r 1 -t "xx yy zz"
61

done
71
91
101
