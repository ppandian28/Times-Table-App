pipeline {
    agent any
    environment {
       PATH = "C:\\Program Files\\MATLAB\\R2020b\\bin;${PATH}"
   }
    stages{
        stage('Run MATLAB Tests') {
            steps
            {
                runMATLABTests(codeCoverageCobertura: 'coverage.xml')
            }       
        } 
        stage('Publish to Codecov') {
            steps
            {
                bat('curl -s https://codecov.io/bash | bash -t 04924abd-c351-4d7d-b6c3-675722b76229 -f coverage.xml')
            }       
         }     
    } 
}


