#!/usr/bin/env groovy
pipeline{
    agent any
    environment {
        CI='true'

    }

    stages {
        stage('Tests') {
            steps {

              nodejs('testJS'){
                sh 'npm install'
                sh 'npm start'
              }
              dir('test'){
                git url: 'https://github.com/benrconway/JenkinsTest2.git'
                nodejs('testJS'){
                  sh 'npm install'
                  sh 'npm test'
                }
              }


              // sh 'curl -f http://0.0.0.0:3000/api || echo "Hello world"'
              // sh './test/test.sh'

              // nodejs('testJS'){
              //   sh 'npm install'
              //   sh 'npm test'
              // }

            }
        }
      }

      // post{
      //   always {
      //     mail to: 'ben.conway@bemo.co', body: 'Here is the log and testing it works.', subject: '$PROJECT_NAME - Build # $BUILD_NUMBER - $BUILD_STATUS!'
      //
      //   }
      // }
}
