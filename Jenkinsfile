pipeline {
    agent any
     environment {
        PATH = "${PATH};/usr/local/MATLAB/R2019b/bin"
    }
    stages{
        stage('Run Tests') {
            steps
            {
                runMATLABTests(
                               testResultsPDF: 'myresult/result.pdf'
                               testResultsTAP: 'tapResults/tapReport.tap'
                               testResultsJUnit: 'junitResults/junit.xml'
                               codeCoverageCobertura: 'codeCoverage/codeCoverage.xml'
                               testResultsSimulinkTest: 'simulinkTests/stmReport.mldatx'
                               modelCoverageCobertura: 'modelCoverage/modelCoverage.xml'
                              )         
            }       
        }                
    }
}
