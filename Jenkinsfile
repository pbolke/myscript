pipeline {
    agent {
        label 'Dev_system'
    }
    stages {
        stage('Build') {
            steps {
                echo 'This is Build stage.'
                sh cd /tmp/
                sh git clone https://oivm.pl.s2-eu.capgemini.com/gitlab/gitlab-admins/safran-aircraft-engines.git
            }
        }
        stage('deploy'){
            steps{
                echo "This is deployment stage."
            }
        }
    }
}