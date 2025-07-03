pipeline {
    agent any

    stages {

        stage('Build') {
            steps {
                echo 'Building...'
                sh './build_project.bash'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests...'
                // Example:
                // sh './gradlew test'
                // sh 'npm test'
            }
        }

        stage('Deploy') {
            when {
                branch 'main'
            }
            steps {
                echo 'Deploying...'
                // sh './deploy.sh'
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully.'
        }
        failure {
            echo 'Pipeline failed.'
        }
    }
}
