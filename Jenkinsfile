pipeline {
   agent any
   tools {
       matlab 'R2020b'
   }
    stages{
        stage('Run MATLAB Command') {
            steps
            {
               runMATLABCommand 'matlabroot'
            }       
        }                
    } 
}
