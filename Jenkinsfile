pipeline {
    agent any

    stages {
        stage('Deploy') {
            steps {
        script 
        {
    sh """ssh -tt root@192.168.126.28 << EOF 
    docker-d/test/Dockerfile-execution.sh
    exit
    EOF"""
}           
                echo 'Java Spring aplication deployed successfully'
            }
        }
    }
}