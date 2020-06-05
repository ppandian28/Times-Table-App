pipeline {
    agent any
     environment {
        PATH = "${PATH};/usr/local/MATLAB/R2019b/bin"
    }
    stages{
        stage('Run Tests') {
            steps
            {
                runMATLABTests(testResultsPDF:,
                               testResultsJUnit: 'junitResults/junit.xml')         
            }       
        }                
    }
}
