#!/bin/bash
#file: if_case2.sh

declare -a MACHINESpmn=(quad01 quad02 quad03 quad04 quad05 quad06) 
echo "Listado de maquinas: ${MACHINESpmn[@]}"
#declare -a WHEREWORKREMOTE
#declare -a WHEREWORKLOCAL

NOMACHINESpmn=`echo ${#MACHINESpmn[@]}` #cuenta el numero de elementos en el arreglo y los asigna a la variable NOMACHINESpmn
echo "No. de maquinas: $NOMACHINESpmn"

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



