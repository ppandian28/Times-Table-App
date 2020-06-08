pipeline {
    agent any
    environment {
        PATH = "C:\Program Files\MATLAB\R2019a\bin;${PATH}"   // Windows agent
     // PATH = "/usr/local/MATLAB/R2019a/bin:${PATH}"   // Linux agent    
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
