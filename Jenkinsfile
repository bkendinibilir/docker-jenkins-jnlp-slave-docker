properties([
    pipelineTriggers([
        cron('H H(3-6) * * *'), 
        pollSCM('* * * * *')
    ])
])

node('docker') {
    withEnv(['REGISTRY = \'docker.io/bkendinibilir\'']) {
        stage('Build') {
            checkout scm
            sh 'make build'
        }
        stage('Push') {
            sh 'make push'
        }
    }
}