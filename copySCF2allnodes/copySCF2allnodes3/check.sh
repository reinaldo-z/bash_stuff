#declare -a MACHINESpmn=(`cat quads`)
if [ -e bad_quads ]; then
	for i in `cat bad_quads`; do 	
		echo "$i esta en badquads"\n
		echo $i
		QUAD=`grep $i quads_to_use`
		echo "$QUAD esta en quads"\n
		echo $QUAD		
		if [ $i == $QUAD ]; then
			echo "coincidencia: i= $i está en bad_quads y QUAD= $QUAD está en quads_to_use"\n
		fi
		#printf "========"\n
		#echo "MAQUINA501=$REMOTESERVER"
		#echo "MAQUINA500=$anterior"
		#SWITCHNAME="Copying by TCP/IP. Infiniband is damaged for $MAQUINA501"
		$echo $SWITCHNAME
	done	
fi
