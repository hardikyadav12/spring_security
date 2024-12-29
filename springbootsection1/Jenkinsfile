pipeline {
    agent any
    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository
                git url: 'https://github.com/hardikyadav12/spring_security.git', branch: 'main'
            }
        }
        stage('Build') {
            steps {
                // Just echo a message to simulate a build step
                echo 'Build stage executed!'
            }
        }
    }
}