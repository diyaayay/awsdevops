pipeline {
agent any
environment{
PROJECT_NAME="awsdevops"
}
stages{
stage ("Docker Build"){
steps{

sh "docker build -t ${PROJECT_NAME} ."


}
}
stage ("Docker Run"){
steps{
sh "(docker ps -s | grep ${PROJECT_NAME}) && (docker stop ${PROJECT_NAME} && docker rm ${PROJECT_NAME})"
sh "docker build -t ${PROJECT_NAME} ${PROJECT_NAME}:latest"


}
}
stage ("Docker Test"){
steps{

sh 'curl -o /dev/null -s -w "%{http_code\n}" http://localhost:8000/'


}
}



}
}
