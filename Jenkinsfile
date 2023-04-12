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
                slackSend channel: '#jenkins', message: 'Build successfully '
            }
        }     
    }
}
