pipeline {
  agent any
  stages {
        stage('Checkuot-git') {
          steps{
            git poll: true, url:  'https://github.com/macevedoc/nexo_jenkins.git'
          }
        }
        stage ('CreateVirtualEnv') {
          steps {
            sh 'virtualenv entormo_virtual'
          }
        }
        stage ('InstallRequieriments') {
          steps {
            sh 'pip install -r requirements.txt'
          }
        }
        stage ('')
  }

}
