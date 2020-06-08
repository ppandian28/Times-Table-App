pipeline {
    agent any
    environment {
        //  PATH = "C:\Program Files\MATLAB\R2019b\bin;${PATH}"   // Windows agent
        // PATH = "/usr/local/MATLAB/R2019a/bin:${PATH}"   // Linux agent    
    }
    stages{
        stage('Run MATLAB Command') {
            steps
            {
               runMATLABCommand 'disp('Hello World!')'
            }       
        }                
    } 
}
