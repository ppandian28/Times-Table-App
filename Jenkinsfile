pipeline {
    agent any
        stages {
            stage('BuildAndTest') {
                matrix {
                            agent any
                            environment {
                                    PATH = "C:\\Program Files\\MATLAB\\${VERSION}\\bin;${PATH}"
                            }
                            axes {
                                axis {
                                        name 'VERSION'
                                        values 'R2019b', 'R2020a'
                                    }
                                }
                        stages {
                            stage('Run MATLAB commands') {
                                        steps {
                                                    runMATLABCommand "ver"
                                                    runMATLABCommand "pwd"
                                                }
                                    }
                                }
                            }
                    }
            }
       
}
