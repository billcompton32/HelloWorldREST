pipeline {
    agent any
    tools {
        maven 'Maven 3.3.3'
        jdk 'jdk8'
    }
    stages {
        stage ('Build') {
            steps {
                sh 'mvn clean package'
            }
            post {
                success {
                    junit 'target/surefire-reports/**/*.xml' 
                }
            }
        }
    }
}
