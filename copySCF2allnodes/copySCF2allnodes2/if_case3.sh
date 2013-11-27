#!/bin/bash
#file: if_case2.sh

declare -a MACHINESpmn=(`cat ./MACHINESpmn`) 
declare -a QUADS_TCPIP=(`cat ./.quads_with_infiniband_damage`)
echo

echo "Listado de maquinas: ${MACHINESpmn[@]}"
echo "Listado de maquinas sin infiniband: ${QUADS_TCPIP[@]}"
echo

NOMACHINESpmn=`wc -l <./MACHINESpmn`
echo "No. de maquinas para trabajar: $NOMACHINESpmn"
NOQUADS_TCPIP=`wc -l <./.quads_with_infiniband_damage`
echo "No. de maquinas con infiniband dañado: $NOQUADS_TCPIP"

DIR=`pwd`
REMOTESERVER=quad03
ANFITRION=quad01

hh=4
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

############## INICIA MODIFICACIÓN
if [ -e $DIR/.quads_with_infiniband_damage ]; then
#if [ -e ./.quads_with_infiniband_damage ]; then
	echo

	declare -a QUADS_TCPIP=(`cat $DIR/.quads_with_infiniband_damage`)
	#echo "Cuads_tcpip: ${QUADS_TCPIP[@]}"
	
	echo
	NOMACHINESpmn=`wc -l <./MACHINESpmn`
	#echo "No. de maquinas: $NOMACHINESpmn"
	#echo "Listado de maquinas: ${MACHINESpmn[@]}"
	#echo
	NOQUADS_TCPIP=`wc -l <$DIR/.quads_with_infiniband_damage`
							 #.quads_with_infiniband_damage
	#echo "No. de maquinas sin infiniband: $NOQUADS_TCPIP"
	#echo "Listado de maquinas sin infiniband: ${QUADS_TCPIP[@]}"
	#echo

	for (( COUNT1=0; COUNT1<=NOQUADS_TCPIP-1; COUNT1++ )); do
	for (( COUNT2=0; COUNT2<=NOMACHINESpmn-1; COUNT2++ )) do
		#echo "QUADS_TCPIP = ${QUADS_TCPIP[COUNT1]}"
		#echo "MACHINESpmn = ${MACHINESpmn[COUNT2]}"	
		#echo	
		if [ ${QUADS_TCPIP[COUNT1]} = ${MACHINESpmn[COUNT2]} ]; then
			echo "coinciendcia para: QUADS_TCPIP = ${QUADS_TCPIP[COUNT1]} y MACHINESpmn = ${MACHINESpmn[COUNT2]}"
			MAQUINA501=$REMOTESERVER
			echo MAQUINA501=$MAQUINA501
			MAQUINA500=$anterior
			echo MAQUINA500=$MAQUINA500
		fi
	done
	done
	SWITCHNAME="Copying by TCP/IP. Infiniband damaged for $MAQUINA501"
	echo $SWITCHNAME

else
	echo "No existe el archivo"
fi
############## FINALIZA MODIFICACIÓN

			echo $SWITCHNAME
	else
		MAQUINA501=$REMOTESERVER
		MAQUINA500=$anterior
		SWITCHNAME="Not using infiniband"
	fi
fi



