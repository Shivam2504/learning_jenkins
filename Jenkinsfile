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
                    dockerImage = docker.build("my-html-app")
                }
            }
        }

        stage('Run Container') {
            steps {
                script {
                    sh "docker rm -f my-html-container || true"
                    sh "docker run -d -p 8081:80 --name my-html-container my-html-app"
                }
            }
        }
    }
}
