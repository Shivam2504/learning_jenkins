pipeline {
    agent any

    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    echo 'Hello laudu'
                    bat 'docker --version'
                }
            }
        }

        // stage('Run Docker Container') {
        //     steps {
        //         script {
        //             bat 'docker rm -f my-running-container || true'
        //             bat 'docker run -d --name my-running-container -p 80:80 your-image-name:latest'
        //         }
        //     }
        // }
        
    }
}
