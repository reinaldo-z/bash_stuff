#!/bin/bash

declare -a kpts=(7202 9802 11252)

for i in ${kpts[@]}; do
	all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v 18 -c 42 -r 1 -t "xx yy zz"
	all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v 18 -c 42 -r 3 -t "xxy yxy zxy"
done
