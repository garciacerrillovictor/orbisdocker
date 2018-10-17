pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                sh 'make project-workspace'
                sh 'make install'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'make start'
                sh 'make curl'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh 'make release'
                sh 'make deploy.ghpages'
            }
        }
    }
}
