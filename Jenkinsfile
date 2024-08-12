pipeline
{
agent any
stages
{
stage('Build')
{
steps{
sh '#!/bin/bash

C_N="ProjectNodejs"
I_N="ProjectNodejs"

docker ps | grep "$C_N" > /dev/null
if [ $? -eq 0 ];
then
docker stop $C_N
docker rm $C_N
fi

docker images | grep "$I_N" > /dev/null
if [ $? -eq 0];
docker rmi $I_N
fi
docker build -t $I_N .
docker run -d --name $C_N $I_N '
}
}
stage('Test')
{
steps{
sh '#!/bin/bash
npm test'
}
}
stage('Deploy')
{
steps{
sh '!/bin/bash
docker run -p 3000:3000 ProjectNodejs'
}
}
}
}
