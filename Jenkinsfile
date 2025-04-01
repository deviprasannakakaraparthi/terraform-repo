pipeline {
    agent any

    environment {
        AWS_ACCESS_KEY_ID     = credentials('aws-access-key')  // Reference the credentials ID
        AWS_SECRET_ACCESS_KEY = credentials('aws-access-key')  // Reference the credentials ID
    }

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/deviprasannakakaraparthi/terraform-repo.git'
            }
        }

        stage('Initialize Terraform') {
            steps {
                sh 'terraform init'
            }
        }

        stage('Plan Terraform Deployment') {
            steps {
                sh 'terraform plan -out=tfplan'
            }
        }

        stage('Apply Terraform Changes') {
            steps {
                sh 'terraform apply -auto-approve tfplan'
            }
        }
    }

    post {
        success {
            echo 'Terraform deployment was successful.'
        }
        failure {
            echo 'Terraform deployment failed.'
        }
    }
}

