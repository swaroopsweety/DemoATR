pipeline {
    agent any

    stages {
        stage('continuous download') {
            steps {
              git 'https://github.com/AneesRavidKhan/DemoATR.git'  
            }
        }
          stage('continuous build') {
            steps {
                sh 'mvn install'
            }
        }
        stage('continuous deploy') {
            steps {
                sh 'sshpass -p "sai" scp target/DemoATR.war sai@172.17.0.3:/opt/apache-tomcat-9.0.56/webapps'
            }
        }
    }
}
