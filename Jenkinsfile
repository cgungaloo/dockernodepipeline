def CONTAINER_NAME="jenkins-pipeline"
def CONTAINER_TAG="latest"
def DOCKER_HUB_USER="chrisgungaloo"
def HTTP_PORT="8090"

node{
 stage('Initialize'){
   def dockerHome = tool 'mydocker'
   def nodeHome = tool 'mynode'
  env.PATH = "${dockerHome}/bin:${nodeHome}/bin:${env.PATH}"
 }

 stage('Checkout') {
        checkout scm
    }

  stage('TestEnv'){
    sh 'echo deploying test environment'
    try{
    sh "docker image prune -f"
    sh "docker build -t nodebox -f Dockerfile.node . "
    }catch(error){}
  }

  stage('Push to Docker Registry'){
          withCredentials([usernamePassword(credentialsId: 'dockerHubAccount', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {
          sh "docker login -u $dockerUser -p $dockerPassword"
          sh "docker tag nodebox chrisgungaloo/nodebox"
          sh "docker push chrisgungaloo/nodebox"
          echo "Image push complete"
          }
      }
  stage('Test'){
    try{
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
