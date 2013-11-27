#!/bin/bash

# printf "50h_c16h8_alt.klist_130\n" >  50h_c16h8_alt.klist_130; sleep 0.1s
# printf "50h_c16h8_alt.klist_1252\n" > 50h_c16h8_alt.klist_1252; sleep 0.1s
# printf "50h_c16h8_alt.klist_1570\n" > 50h_c16h8_alt.klist_1570; sleep 0.1s
# printf "50h_c16h8_alt.klist_1802\n" > 50h_c16h8_alt.klist_1802; sleep 0.1s
# printf "50h_c16h8_alt.klist_2180\n" > 50h_c16h8_alt.klist_2180; sleep 0.1s
# printf "50h_c16h8_alt.klist_2452\n" > 50h_c16h8_alt.klist_2452; sleep 0.1s
# printf "50h_c16h8_alt.klist_2740\n" > 50h_c16h8_alt.klist_2740; sleep 0.1s
# printf "50h_c16h8_alt.klist_3044\n" > 50h_c16h8_alt.klist_3044; sleep 0.1s
# printf "50h_c16h8_alt.klist_3202\n" > 50h_c16h8_alt.klist_3202; sleep 0.1s

strc=50h_c16h8_alt
strc_klist=`echo "$strc"`.klist_

declare -a kptsfiles=(`ls -1cr "$strc_klist"*`)
declare -a kpts
for (( i = 0; i < `echo ${#kptsfiles[@]}`; i++ )); do
	kpts[i]=`echo "${kptsfiles[i]}" | tr -d -c 0-9 | sed 's/^.....//'`
done

echo ${kpts[@]}

###############  GETOPTS TEST IN FOLLOWING CYCLE ###############
# for i in ${kpts[@]}; do
# 	./run_tiniba_getopts_test.sh -r setkp -k "$i"
# done
################################################################

	# all_responses.sh -w total -m 130_25-spin  -s 0 -o 1 -v 18 -c 42 -r 41 -t zzz

nv=18
nc=42

if [[ -e completed_all_responses ]]; then
	rm completed_all_responses
fi

declare -a kpts=

for i in ${kpts[@]}; do
	printf "all_responses.sh -m $i _25-spin -s 0 -o 1 -v $nv -c $nc -r 41 -t ijk    started at $( date ) \n" >> completed_all_responses
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t xxx 
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t xxy
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t xxz
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t xyx
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t xyy
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t xyz
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t xzx
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t xzy
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t xzz
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t yxx
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t yxy
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t yxz
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t yyx
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t yyy
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t yyz
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t yzx
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t yzy
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t yzz
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t zxx
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t zxy
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t zxz
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t zyx
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t zyy
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t zyz
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t zzx
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t zzx
	# all_responses.sh -w total -m "$i"_25-spin -s 0 -o 1 -v "$nv" -c "$nc" -r 41 -t zzx
	printf "finished at: $( date )\n" >> completed_all_responses
done