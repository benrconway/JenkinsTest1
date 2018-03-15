{
  agent any

    environment {
      CI = 'true'

    }
    stages {

        stage('Build') {
            steps {
                dir('server'){
                    git url: 'https://github.com/benrconway/JenkinsTest1.git'
                    nodejs('testJS'){
                        sh 'npm install'
                    }
                }

            }
        }
    #     stage('Test') {
    #         steps {
    #             dir('test'){
    #                 git url: 'https://github.com/benrconway/JenkinsTest2.git'
    #             nodejs('testJS') {
    #                 sh 'test/npm install'
    #                 sh 'test/mocha test.js'
    #
    #             }
    #             echo 'Testing.. and stuff'
    #             nodejs('testJS') {
    #                 sh 'test/npm install'
    #                 sh 'test/mocha test.js'
    #             }
    #         }
    #     }
    # }
  }
}
