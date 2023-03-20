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
    stages {
        stage('Build') {
            steps {
                echo 'This is Build stage.'
                sh "whoami"            
            }
        }     
    }
}