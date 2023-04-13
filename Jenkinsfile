#!/usr/bin/env groovy

pipeline {
    /*
    define the agent for run code on dev system. The Dev System is lable where added dev system. 
    */
    agent {
        node {
            label 'Dev_system'
            customWorkspace '/data/jenkins_workspace_pipeline/workspace'
        }
    }
    // using the Timestamper plugin we can add timestamps to the console log
    options {
        timestamps()
    }
    stages {
        stage('Build') {
            steps {
                echo 'checkout AngulerJS code.'
                checkout scmGit(branches: [[name: '*/FrontendSprint4']], extensions: [], userRemoteConfigs: [[credentialsId: 'f70401a7-6a25-4e2b-beca-179b7dd93358', url: 'https://oivm.pl.s2-eu.capgemini.com/gitlab/gitlab-admins/safran-aircraft-engines.git']])
                sh '''## steps for build AngulerJS code
                cd $WORKSPACE
                npm install --force'''
                slackSend channel: '#jenkins', message: 'Build successfully '
            }
        stage('Deploy') {
            steps {
                echo 'creating docker container'
                sh '''cd $WORKSPACE
                #sudo docker rmi anguler-web
                ## Build new Docker image
                sudo docker build -t pipeline-web-image .
                ## Create and Start docker container
                sudo docker run -it -d --name pipeline-web -p 5555:80 pipeline-web-image'''
                slackSend channel: '#jenkins', message: 'Create container successfully '
            }       
        }     
    }
}
