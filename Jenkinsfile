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
    stage('SonarQube Analysis') {
        steps {
            withSonarQubeEnv('jenkins-sonarqube') { // Use the name you configured
            sh './mvnw sonar:sonar -Dsonar.projectKey=Spring-Security -Dsonar.host.url=http://localhost:9000 -Dsonar.login=sqa_9f7a69849d189ddb70b8864ac25a045d3fe4696a'
            }
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