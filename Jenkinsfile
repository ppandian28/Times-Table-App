pipeline {
    agent any
     #environment {
     #   PATH = "${PATH};/usr/local/MATLAB/R2018b/bin"
    #}
    stages{
        stage('Run Tests') {
            steps
            {
                runMATLABTests()         
            }       
        }                
    }
}
