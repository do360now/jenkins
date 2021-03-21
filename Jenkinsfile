// pipeline {
//     agent any
//     stages {
//         stage('Build') {
//             steps {
//                sh "cat /etc/*release*"
//             }
//         }
//     }
// }

pipeline {
    agent {
        docker { image 'node:14-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}


// pipeline {
//     agent { docker 'maven:3-alpine' } 
//     stages {
//         stage('Example Build') {
//             steps {
//                 sh 'mvn -B clean verify'
//             }
//         }
//     }
// }