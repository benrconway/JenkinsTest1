#!/usr/bin/env groovy
pipeline{
    agent any
    environment {
        CI='true'
    }

    stages {
        stage('Tests') {
            steps {
                sh 'pwd'
                sh '~./usr/local/bin/npm -version'


            }
        }
      }
}
