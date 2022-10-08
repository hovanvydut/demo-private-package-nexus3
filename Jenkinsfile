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
				sh 'docker compose -p publish_npm_lib up --build'
			}
		}
	}
}
