def CONTAINER_NAME="jenkins-pipeline"
def CONTAINER_TAG="latest"
def DOCKER_HUB_USER="vineet0164"
def HTTP_PORT="8090"

node{
 stage('Initialize'){
   def dockerHome = tool 'myDocker'
   def nodeHome = tool 'mynodejs'
  env.PATH = "${dockerHome}/bin:${nodeHome}/bin:${env.PATH}"
 }

 stage('Checkout') {
        checkout scm
    }
}
