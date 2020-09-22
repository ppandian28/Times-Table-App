pipeline {
    agent any
    environment {
       PATH = "C:\\Program Files\\MATLAB\\R2020b\\bin;${PATH}"
   }
    stages{
        stage('Run MATLAB Tests') {
            steps
            {
                runMATLABTests(codeCoverageCobertura: 'code-coverage/coverage.xml')
            }       
        } 
        stage('Publish to Codecov') {
            steps
            {
                bat('curl -s https://codecov.io/bash | bash -f "code-coverage/coverage.xml"')
            }       
         }     
    } 
}
