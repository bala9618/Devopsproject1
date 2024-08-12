#!/bin/bash

C_N="ProjectNodejs"
I_N="ProjectNodejs"

sudo -s docker ps | grep "$C_N" > /dev/null
if [ $? -eq 0 ];
then
sudo -s docker stop $C_N
sudo -s docker rm $C_N
fi

sudo -s docker images | grep "$I_N" > /dev/null
if [ $? -eq 0];
then
sudo -s docker rmi $I_N
fi

docker build -t $I_N .
docker run -d --name $C_N $I_N
