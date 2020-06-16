pipeline {
    agent any
    stages {
        stage('BuildAndTest') {
            matrix {
                agent any
                environment {
                    PATH = "C:\\Program Files\\MATLAB\\${VERSION}\\bin;${PATH}"   // Windows agent
                }
                axes {
                    axis {
                        name 'VERSION'
                        values 'R2019a', 'R2019b'
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
