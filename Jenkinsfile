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
              nodejs('testJS'){
                sh 'npm install'
              }
              sh 'cd test'
              nodejs('testJS'){
                sh 'npm install'
                sh '../npm start'
                sh 'mocha test.js'
              }

            }
        }
      }
}
