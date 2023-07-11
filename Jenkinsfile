node {
	def WORKSPACE = "/var/lib/jenkins/workspace/SpringBoot"
	def dockerImageTag = "SpringBoot${env.BUILD_NUMBER}"
	
	try{
		stage('clone repo'){
			git url: 'git@github.com:Shubhamhole96/springboot.git',
			CredentialsId: 'springdeploy-user',
			branch: 'main'
		}
			
		stage('Build docekr'){
			dockerImage = docker.build("SpringBoot:${env.BUILD_NUMBER}")
		}
		
		stage ('Deploy docker')
			echo "Docker Image tag Name: ${dockerImageTag}"
			sh "docker stop SpringBoot || true && docker rm SpringBoot || true"
			sh "docker run --name SpringBoot -d -p 8081:8080 SpringBoot:${env.BUILD_NUMBER}"
		}
	}catch(e){
		throw e
	}
	
}