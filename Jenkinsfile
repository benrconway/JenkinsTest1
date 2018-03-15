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
                sh 'npm start'
              }
              sh 'pwd'
              sh "cd test"
              sh 'pwd'
              sh 'ls -al'
              sh 'curl -f http://0.0.0.0:3000/api || echo "Hello world"'

              // nodejs('testJS'){
              //   sh 'npm install'
              //   sh 'npm test'
              // }

            }
        }
      }
}
