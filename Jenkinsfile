pipeline {
    agent any
    environment {
        PATH = "/usr/local/MATLAB/R2019a/bin;${PATH}"
    }
    stages{
        stage('Run Tests') {
            steps
            {
                runMATLABTests()         
            }       
        }                
    }
}
