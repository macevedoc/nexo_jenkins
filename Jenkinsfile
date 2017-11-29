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
        sh 'source entormo_virtual/bin/activate'
      }
    }
    stage ('InstallRequieriments') {
      steps {
        sh 'pip install -r requirements.txt'
      }
    }
    stage ('TestApp') {
      steps {
        sh 'cd src && pytest && cd ..'
      }
    }
    stage('RunApp') {
      steps {
        sh 'python src/main.py &'
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
