#!/bin/bash

declare -a KPTS=()

NV=
NC=
I_SPIN=

for i in ${KPTS[@]}; do
	printf "Responses for $i -kpts started at $( date ) \n" >> .completed_responses
	all_responses.sh -w total -m "$i"_"$I_SPIN" -s 0 -o 1 -v "$NV" -c "$NC" -r 1 -t "xx yy zz"
	all_responses.sh -w total -m "$i"_"$I_SPIN" -s 0 -o 1 -v "$NV" -c "$NC" -r 3 -t "xxy yxy zxy"
	all_responses.sh -w total -m "$i"_"$I_SPIN" -s 0 -o 1 -v "$NV" -c "$NC" -r 41 -t "xxy yxy zxy"
	printf "finished at $( date ) \n ##### \n " >> .completed_responses
done
