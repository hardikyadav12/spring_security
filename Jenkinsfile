pipeline {
    agent any
    environment {
        DOCKER_IMAGE = "spring-security-app"
        DOCKER_TAG = "latest"
    }
    stages {
        stage('Maven Build') {
            steps {
                sh './mvnw clean package'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh """
                docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} .
                """
            }
        }
    }
}