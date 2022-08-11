pipeline {
    agent any

    stages {
        stage('Clone repo') {
            steps {
                sh 'git clone https://github.com/Quotermain/example-playbook'
            }
        }
        stage('Run playbook') {
            steps{
                sh 'ansible-playbook -i example-playbook/inventory/prod.yml example-playbook/site.yml'
            }
        }
    }
    post {
        always {
            sh "rm -rf example-playbook"
        }
    }
}
