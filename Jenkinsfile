pipeline {
  environment {
     dockerRegistry = "dharmatkj/nodejs-app"
     dockerRegistryCredential = 'dockerhub'
     dockerImage = ''
  }
  agent any
  tools {nodejs "node" }
  stages {
    stage('Cloning Git') {
      steps {
	git credentialsId: 'github', url: 'https://github.com/igstbagusdharmaputra/Docker-NodeJS-Part-3'
      }
    }
    stage('Build') {
       steps {
         sh 'npm install'
       }
    }
    stage('Test') {
      steps {
        sh 'npm test'
      }
    }
    stage('Building image') {
       steps{
         script {
           dockerImage = docker.build dockerRegistry + ":latest"
         }
       }
     }
    stage('Upload Image') {
       steps{
         script {
           docker.withRegistry( '', dockerRegistryCredential ) {
             dockerImage.push()
           }
         }
       }
     }
     stage('Remove Unused docker image') {
       steps{
         sh "docker rmi $dockerRegistry:latest"
       }
     }
  }
}
