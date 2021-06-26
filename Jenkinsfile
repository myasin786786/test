pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
        script 
        {
    sh """ssh -tt root@192.168.10.11 << EOF 
    docker-d/test/Dockerfile-execution.sh
    exit
    EOF"""
}           
                echo 'Java Spring aplication deployed successfully'
            }
        }
    }
}
