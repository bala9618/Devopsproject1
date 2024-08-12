pipeline
{
agent any
stages
{
stage('Build')
{
steps{
sh 'sh home/esdeath82/Devopsproject1/build.sh'
}
}
stage('Test')
{
steps{
sh 'sh home/esdeath82/Devopsproject1/test.sh'
}
stage('Deploy')
{
steps{
sh 'sh home/esdeath82/Devopsproject1/deploy.sh'
}
}
}
}
