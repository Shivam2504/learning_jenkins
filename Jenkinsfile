pipeline {
    agent any
    triggers {
        pollSCM('* * * * *')  // every minute
    }

    environment {
        IMAGE_NAME = "my-app-image"
        CONTAINER_NAME = "my-app-container"
    }

    stages {
        stage('Pull Code') {
            steps {
                git 'https://github.com/Shivam2504/learning_jenkins.git'
            }
        }

        stage('Build Image') {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
            }
        }

        stage('Restart Container') {
            steps {
                script {
                    // Stop and remove old container if exists
                    sh "docker rm -f ${CONTAINER_NAME} || true"
                    // Run new container
                    sh "docker run -d --name ${CONTAINER_NAME} -p 80:80 ${IMAGE_NAME}"
                }
            }
        }
    }
}
