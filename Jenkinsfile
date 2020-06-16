pipeline {
   agent any
   environment {
       PATH = "C:\\Program Files\\MATLAB\\R2019a\\bin;${PATH}"   // Windows agent
    // PATH = "/usr/local/MATLAB/R2019a/bin:${PATH}"   // Linux agent
    // PATH = "/Applications/MATLAB_R2019a.app/bin:${PATH}"   // Mac agent    
   }
    stages{
        stage('Run MATLAB Command') {
            steps
            {
               runMATLABCommand "disp('Hello World!')"
            }       
        }                
    } 
}
