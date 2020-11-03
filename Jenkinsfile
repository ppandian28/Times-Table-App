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

pipeline {
    agent any
    stages {
        stage('BuildAndTest') {
            matrix {
                agent any
                environment {
                    PATH = "C:\\Program Files\\MATLAB\\${MATLAB_VERSION}\\bin;${PATH}"   // Windows agent
                }
                axes {
                    axis {
                        name 'MATLAB_VERSION'
                        values 'R2020a', 'R2020b'
                    }
                }
                stages {
                    stage('Run MATLAB commands') {
                        steps {
                            runMATLABCommand 'ver'
                            runMATLABCommand 'pwd'
                        }
                    }
                    stage('Run MATLAB tests'){
                        steps {
                            runMATLABTests(testResultsJUnit: 'test-results/results.xml',
                                           codeCoverageCobertura: 'code-coverage/coverage.xml')
                        }  
                    }
                }
            } 
        }
    }
}
