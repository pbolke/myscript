pipeline {
    agent {
        label 'Dev_system'
    }
    stages {
        stage('Build') {
            steps {
                echo 'This is Build stage.'
                sh "mvn -version"                
            }
        }
        stage('deploy'){
            steps{
                echo "This is deployment stage."
            }
        }
    }
}