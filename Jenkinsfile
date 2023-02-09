pipeline {
    agent any
	
	tools
    {
       maven 'maven'
    }
 stages {
      stage('checkout') {
           steps {
                git branch: 'https://github.com/DungLL183/docker-tomcat.git'
          }
        }
	 stage('Execute Maven') {
           steps {
                sh 'mvn clean package'             
          }
        }
  	stage('Docker Build') {
           steps {
                sh 'docker build -t samplewebapp:v4 .'
          }
        }
	 
	 stage('docker push'){
		 withCredentials([string(credentialsId: 'haha', variable: 'dockerPwd')]) {
			 sh 'docker login -u dungll183 -p ${dockerPwd}'
		}
		sh 'docker push dungll183/samplewebapp:v4
	 }
     
 	stage('Run Docker container on remote hosts') {
             
            steps {
                sh "docker -H ssh://ubuntu@ip-172-31-12-3 run -d -p 8080 dungll183/samplewebapp:v4"
 
            }
        }
    }
	}
    
