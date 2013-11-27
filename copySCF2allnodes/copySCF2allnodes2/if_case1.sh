#!/bin/bash
#file: if_case2.sh

declare -a MACHINESpmn=(`cat ./MACHINESpmn`) 
declare -a QUADS_TCPIP=(`cat ./.quads_no_infiniband`)
echo

NOMACHINESpmn=`wc -l <./MACHINESpmn`
echo "No. de maquinas: $NOMACHINESpmn"
echo "Listado de maquinas: ${MACHINESpmn[@]}"
echo
NOQUADS_TCPIP=`wc -l <./.quads_no_infiniband`
echo "No. de maquinas: $NOQUADS_TCPIP"
echo "Listado de maquinas sin infiniband: ${QUADS_TCPIP[@]}"
echo

REMOTESERVER=quad02
ANFITRION=quad01

hh=2
echo "hh=$hh"

let "ant=$hh-1"

anterior=${MACHINESpmn[$ant]}
echo "anterior: $anterior"
echo

if [[ "$REMOTESERVER" == "quad"* ]]; then
	if [ $ANFITRION == "quad01" ];then
		MAQUINA501=$REMOTESERVER"ib"
		echo MAQUINA501=$MAQUINA501
		MAQUINA500=$anterior"ib"
		echo MAQUINA500=$MAQUINA500
		SWITCHNAME="Using infiniband"
		echo $SWITCHNAME

		if [ $MAQUINA501 == "quad02ib" ] || [ $MAQUINA501 == "quad03ib" ]  || [ $MAQUINA501 == "quad07ib" ] || [ $MAQUINA501 == "quad11ib" ] || [ $MAQUINA501 == "quad14ib" ];then
			echo
			MAQUINA501=$REMOTESERVER
			echo MAQUINA501=$MAQUINA501
			MAQUINA500=$anterior
			echo MAQUINA500=$MAQUINA500
			SWITCHNAME="Not using infiniband due to physical damage"
		fi
			echo $SWITCHNAME
	else
		MAQUINA501=$REMOTESERVER
		MAQUINA500=$anterior
		SWITCHNAME="Not using infiniband"
	fi
fi



