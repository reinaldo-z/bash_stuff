#!/bin/bash

for machines_pmn in `cat machines_pmn`; do
	echo "machines_pmn = $machines_pmn"
	maquina501=$machines_pmn"ib"
	echo "maquina501 = $maquina501"

	if [ -e badQUADS ] | [ -s badQUADS ]; then
	aux=`grep quad badQUADS`	
	if [ -n "$aux" ]; then
		echo "hola"
		for damaged_quad in `cat badQUADS`; do 
			damaged_quad=$damaged_quad"ib"
			if [ $damaged_quad == $maquina501 ]; then
				maquina501=$machines_pmn
				echo "maquina501 = $maquina501"
				SWITCHNAME="Using TCPIP. Infiniband connection damaged for $maquina501."
				echo "$SWITCHNAME"
			fi
		done
	fi
	fi
	echo
done
