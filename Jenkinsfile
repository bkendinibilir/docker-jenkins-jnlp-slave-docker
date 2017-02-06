pipeline {
    agent label 'docker'

    environment {
        REGISTRY = 'docker.io/bkendinibilir'
    }

    stages {
        stage('Build') {
            steps {
                checkout scm
                sh 'make build'
            }
        }
        stage('Push') {
            steps {
                sh 'make push'
            }
        }
    }
}