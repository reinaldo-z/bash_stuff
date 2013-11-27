#!/bin/bash

################
#  badQUADS:	# 
#  quad02		#
#  quad03		#
#  quad07		#
#  quad11		#
#  quad14		#
################

for machines_pmn in `cat machines_pmn`; do
	echo "machines_pmn = $machines_pmn"
	maquina501=$machines_pmn"ib"
	echo "maquina501 = $maquina501"

	if [ -e badQUADS ]; then
		for damaged_quad in `cat badQUADS`; do #from file lines in badQUADS to $damaged_quad
			#echo "damaged_quad = $damaged_quad"
			damaged_quad=$damaged_quad"ib"
			#echo "damaged_quad = $damaged_quad"
			if [ $damaged_quad == $maquina501 ]; then
				#echo "Coincidencia: maquina501 = $maquina501; damaged_quad = $damaged_quad"
				maquina501=$machines_pmn
				echo "maquina501 = $maquina501"
				SWITCHNAME="Using TCPIP. Infiniband connection damaged for $maquina501."
				echo "$SWITCHNAME"
			fi
		done
	fi
	echo
done
