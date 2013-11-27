#!/bin/bash 

declare -a QUADS_TCPIP

if [ -e `pwd`/.quads_infiniband_damaged ]; then
	./ciclo_for.sh
	echo "No usando infiniband para: ${QUADS_TCPIP[@]}"
fi
