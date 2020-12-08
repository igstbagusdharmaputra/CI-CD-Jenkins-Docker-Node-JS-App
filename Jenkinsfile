pipeline {
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
         echo 'build'
       }
    }
    stage('Test') {
      steps {
        echo 'test'
      }
    }
  }
}
