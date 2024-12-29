pipeline {
    agent any
    stages {
//         stage('Clone Repository') {
//             steps {
//                 // Clone the GitHub repository
//                 git url: 'https://github.com/hardikyadav12/spring_security.git', branch: 'main'
//             }
//         }
        stage('Maven Build') {
            steps {
                sh './mvnw clean package'
            }
        }
        stage('Test Docker') {
             steps {
                 sh 'docker --version'
            }
        }
    }
}