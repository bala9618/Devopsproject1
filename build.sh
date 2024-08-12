#!/bin/bash

C_N="ProjectNodejs"
I_N="ProjectNodejs"

sudo docker ps | grep "$C_N" > /dev/null
if [ $? -eq 0 ];
then
sudo docker stop $C_N
sudo docker rm $C_N
fi

sudo docker images | grep "$I_N" > /dev/null
if [ $? -eq 0];
sudo docker rmi $I_N
fi

docker build -t $I_N .
docker run -d --name $C_N $I_N
