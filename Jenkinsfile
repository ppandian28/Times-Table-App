// Scripted Pipeline
node {
    def matlabver
    stage('Run MATLAB Command') {
        // Set matlabroot
        matlabver = tool 'R2020a'
        if (isUnix()){
            matlabver = matlabver + "/bin"
        }else{
            matlabver = matlabver + "\\bin"
        }   
        // Add matlabroot to PATH variable
        withEnv(["PATH + MATLAB = $matlabver"]) {
            runMATLABCommand 'pwd,matlabroot'
        }
    }
}
