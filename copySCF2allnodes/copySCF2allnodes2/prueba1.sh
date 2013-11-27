#!/bin/bash
echo

declare -a QUADS_TCPIP=(`cat quads_no_infiniband`)

REMOTESERVER=quad02
echo REMOTESERVER = $REMOTESERVER

COUNT_CUADS=`wc -l <./quads`
echo "COUNT_CUADS = $COUNT_CUADS"

ARREGLO_PRUEBA=`cat quads`

if [ $ARREGLO_PRUEBA == $QUADS_TCPIP ];then
	echo "hay coincidencia"
else
	echo "no hay coincidencia"
fi

for ((h=1; h<=$COUNT_CUADS; h++)); do
	echo $h
done
