pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'mvn clean package'
      }
    }

    stage('Test') {
      steps {
        sh 'mvn test'
      }
    }

    stage('Deploy') {
      steps {
        sh 'docker build -t my-application .'
        sh 'docker run -p 8080:8080 my-application'
      }
    }
  }
}
