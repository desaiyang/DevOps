
pipeline {
    agent any
    environment {
        //things you declare here is available thru out the pipeline.
        aws_credentials=credentials('sam-jenkins-demo-credentials')
    }
    stages {
        stage('dev') {
            when { expression { "${params.env}" == 'dev' } }
            steps {
                echo 'DEV STAGE ...'
                sh 'aws s3 ls'
            }        
        }
        stage('qa') {
            when { expression { "${params.env}" == 'qa' } }
            steps {
                echo 'QA STAGE ...'
                sh 'aws s3 ls'
            }            
        }
        stage('uat') {
            when { expression { "${params.env}" == 'uat' } }
            steps {
                echo 'UAT STAGE ...'
                sh 'aws s3 ls'
            }            
        }
        stage('prod') {
            when { expression { "${params.env}" == 'prod' } }
            steps {
                echo 'PROD STAGE ...'
                sh 'aws s3 ls'
            }            
        }
    }
}        