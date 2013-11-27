#!/bin/bash

DIR=`pwd` #incluido en el script.

declare -a MACHINESpmn=(`cat ./MACHINESpmn`) #incluido en el script.
#echo ${MACHINESpmn[@]}
NOMACHINESpmn=`echo ${#MACHINESpmn[@]}`
#echo "NOMACHINESpmn = $NOMACHINESpmn"

if [ -e ./.quads_with_infiniband_damage ]; then
	echo
	declare -a QUADS_TCPIP=(`cat ./.quads_with_infiniband_damage`)
	NOQUADS_TCPIP=`echo ${#QUADS_TCPIP[@]}`
	echo "No. de maquinas sin infiniband: $NOQUADS_TCPIP"
	echo "Listado de maquinas sin infiniband: ${QUADS_TCPIP[@]}"

	for (( COUNT1=0; COUNT1<=NOQUADS_TCPIP-1; COUNT1++ )); do
	for (( COUNT2=0; COUNT2<=NOMACHINESpmn-1; COUNT2++ )) do
		if [ ${QUADS_TCPIP[COUNT1]} = ${MACHINESpmn[COUNT2]} ]; then
			echo "coinciendcia para: QUADS_TCPIP = ${QUADS_TCPIP[COUNT1]} y MACHINESpmn = ${MACHINESpmn[COUNT2]}"
			echo
		fi
	done
	done
fi
