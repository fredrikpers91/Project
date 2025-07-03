pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                checkout scm
                echo 'Building...'
                sh './build_project.bash'
            }
        }
        // ...
    }
}
// Post-build actions can be added here
    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed.'
        }
    }
}