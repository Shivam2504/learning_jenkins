pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Shivam2504/learning_jenkins.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerImage = docker.build("my-html-app:latest")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Stop old container if running
                    sh 'docker rm -f my-running-container || true'
                    // Run new container
                    sh 'docker run -d --name my-running-container -p 80:80 your-image-name:latest'
                }
            }
        }
    }
}
