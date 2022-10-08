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
				sh 'echo "//home-server.silk-cat.software:9701/repository/npm-hosted/:_authToken=NpmToken.ef6398bf-10b1-3d36-91c3-fe0d95640650" > ~/.npmrc'
				sh 'npm publish'
			}
		}
	}
}
