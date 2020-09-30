//pipeline {
//    agent any
//    environment {
//       PATH = "C:\\Program Files\\MATLAB\\R2020b\\bin;${PATH}"
//   }
//    stages{
//        stage('Run MATLAB Tests') {
//            steps
//            {
//                runMATLABTests(codeCoverageCobertura: 'coverage.xml')
//            }       
//        } 
//        stage('Publish to Codecov') {
//            steps
//            {
//                bat('curl -s https://codecov.io/bash | bash -t @.token_1 -f coverage.xml')
//            }       
//         }     
//    } 
//}

// Declarative Pipeline
pipeline {
    agent any
       environment {
       PATH = "C:\\Program Files\\MATLAB\\R2020b\\bin;${PATH}"
   }
    
    stages{
        stage('Run MATLAB Tests') {
            steps
            {
                runMATLABTests(testResultsJUnit: 'test-results/results.xml',
                               codeCoverageCobertura: 'code-coverage/coverage.xml',
                               sourceFolder: ['source'])
            }       
        }                
    } 
}
