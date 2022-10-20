pipeline{
	agent any
	
	triggers {
		githubPush()
	}

	stages {
		stage('Git clone') {
			steps {
				git branch: 'main', url: 'https://github.com/hovanvydut/demo-private-package-nexus3.git'
			}
		}

		stage('Publish') {
			steps {
				sh 'docker build -t build-npm-package .'
				sh 'docker container run --rm -v "$(pwd)":/home/build build-npm-package'
			}
		}
	}

		post {
		always {
            sh 'docker system prune -af'
		}
		}
}
