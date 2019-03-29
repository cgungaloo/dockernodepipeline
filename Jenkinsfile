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

  stage('TestEnv'){
    sh 'echo deploying test environment'
    try{
    sh "docker image prune -f"
    sh "docker stop nodebox"
    sh "docker build -t nodebox -f Dockerfile.node . "
    }catch(error){}
  }

  stage('Test'){
    try{
      sh 'docker rm nodebox'
      sh 'docker run -p 1337:1337 --name=nodebox nodebox'

    }catch(error){}
  }

  stage('Deploying to prod'){
    sh 'echo Testing application'
  }

  stage('Running reports'){
    sh 'echo Testing application'
  }
}
