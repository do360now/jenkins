pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
               sh "cat /etc/*release*"
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