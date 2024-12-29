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
        stage('Run Docker Image') {
            steps {
                sh """
                docker run -d -p 9080:9080 --name ${DOCKER_IMAGE} ${DOCKER_IMAGE}:${DOCKER_TAG}
                """
            }
        }
    }
}