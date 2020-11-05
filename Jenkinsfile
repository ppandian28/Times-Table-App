pipeline {
    agent any
    stages {
        stage('BuildAndTest') {
            matrix {
                agent any
                axes {
                    axis {
                        name 'MATLAB_VERSION'
                        values 'R2020b', 'R2020a'
                    }
                }
                tools{
                    matlab "${MATLAB_VERSION}"
                }
                stages {
                    stage('Run MATLAB commands') {
                        steps {
                            runMATLABCommand 'ver'
                            runMATLABCommand 'pwd'
                        }
                    }
                    stage('Run MATLAB Tests') {
                    steps
                        {
                            runMATLABTests(testResultsJUnit: 'test-results/results.xml',
                                           codeCoverageCobertura: 'code-coverage/coverage.xml')
                        }
                    }
                }
            }
        }
    }
}
