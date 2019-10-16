#!/bin/bash
cont_count=$1
echo "creating $cont_count containers.."
for i in `seq $cont_count`
do
	echo "=============================="
	sudo podman run --name www.anytimeretail$i -d -it localhost/aneesravidkhan/demoatr:1.01 /bin/bash
	echo "www.anytimretail$i container has been created!"
done
#docker inspect --format {{.NetworkSettings.IPAddress}} `docker ps -q` > IPs.txt
# ./create_lb.sh
