#!/usr/bin/env groovy
pipeline{
    agent any
    environment {
        CI='true'
    }

    stages {
        stage('Tests') {
            steps {
              dir('test'){
                git url: 'https://github.com/benrconway/JenkinsTest2.git'
              }
                sh 'npm install'


            }
        }
      }
}
