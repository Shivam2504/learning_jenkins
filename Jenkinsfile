pipeline {
    agent any

    environment {
        IMAGE_NAME = 'my-docker-image'
        CONTAINER_NAME = 'my-running-container'
    }

    stages {
        stage('Pull Code') {
            steps {
                git branch: 'main', url: 'https://github.com/Shivam2504/learning_jenkins.git'
            }
        }

        stage('Build Image') {
            steps {
                script {
                    echo "Building Docker image..."
                    bat "docker build -t ${IMAGE_NAME}:latest ."
                }
            }
        }

        stage('Restart Container') {
            steps {
                script {
                    echo "Stopping and removing old container..."
                    // Windows-compatible error suppression
                    bat "docker stop ${CONTAINER_NAME} || exit 0"
                    bat "docker rm -f ${CONTAINER_NAME} || exit 0"

                    echo "Starting new container..."
                    bat "docker run -d --name ${CONTAINER_NAME} -p 80:80 ${IMAGE_NAME}:latest"
                }
            }
        }
    }
}