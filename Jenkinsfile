pipeline{
    agent any
        stages{
             stage('Build docker image'){
                steps{
                    echo 'Building the application...'
                    bat 'docker build -t myapp:latest .'
                }
            }
            stage('Run docker image'){
                steps{
                    
                    bat "docker run -d -p 5000:5000 --name  mycontainer myapp:latest"
                }
            }
        }

            post{
                success 
                {
                    echo 'successfully deployed the application'
                }
                failure{
                    echo 'failed'
            }
        }
        }

