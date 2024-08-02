pipeline
{
agent any
stages
{
stage('Build')
{
steps{
sh './bulid.sh'
}
}
stage('Test')
{
steps{
sh './test.sh'
}
}
stage('Deploy')
{
steps{
sh './deploy.sh'
}
}
}
}
