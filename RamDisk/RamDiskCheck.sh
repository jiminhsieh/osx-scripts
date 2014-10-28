while true
do
	capacity=$(df -h | awk '/\/RamDisk/ && int($5) >= 95' | tr -s ' ' | cut -f5 -d' ')
	if [[ ! -z "$capacity" ]]  ; then
		rm -rf /Volumes/RamDisk/*
	fi
	sleep 300
done
