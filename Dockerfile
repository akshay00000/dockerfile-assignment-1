		stage('Deploy'){
			steps{
			    
			    sh 'yum install docker -y'
			    sh 'systemctl start docker'
			    sh 'docker build -t myimage:1 /mnt/pipeline-project/game-of-life/gameoflife-web '
			    sh 'docker run -dp 80:8080 myimage:1  '
			    
			
			}
		}
