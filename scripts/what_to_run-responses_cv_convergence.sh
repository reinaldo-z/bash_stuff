#!/bin/bash                                                                                                                                                             

declare -a KPTS=()
declare	-a NC=()

NV=
I_SPIN=

for i in ${KPTS[@]}; do
    for	j in ${NC[@]}; do
        all_responses.sh -w total -m "$i"_"$I_SPIN" -s 0 -o 1 -v "$NV" -c "$j" -r 1 -t "xx yy zz"
        all_responses.sh -w total -m "$i"_"$I_SPIN" -s 0 -o 1 -v "$NV" -c "$j" -r 3 -t "xxy yxy zxy"
        all_responses.sh -w total -m "$i"_"$I_SPIN" -s 0 -o 1 -v "$NV" -c "$j" -r 41 -t "xxy yxy zxy"
    done
done

