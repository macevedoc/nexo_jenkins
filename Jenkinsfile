pipeline {
  agent any
  stages {
    stage('Checkuot-git') {
      steps{
        git poll: true, url:  'https://github.com/macevedoc/nexo_jenkins.git'
      }
    }
    stage ('TestHtml') {
      steps {
        sh 'ls -la index.html'
      }
    }
    stage('BuildDocker') {
      steps {
        sh 'docker build -t appprueba:latest .'
      }
    }
    stage('PushDockerImage') {
      steps {
        sh 'docker tag appprueba:latest macevedoc/appprueba:latest'
        sh 'docker push macevedoc/appprueba:latest'
        sh 'docker rmi appprueba:latest'
      }
    }
  }

}
