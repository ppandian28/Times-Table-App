// Scripted Pipeline
node {
    def matlabver
    stage('Run MATLAB Command') {
        // Specify the matlabroot/bin folder for the desired MATLAB version
        matlabver = tool 'R2020b'
        if (isUnix()){
            matlabver = matlabver + "/bin"   // Linux or macOS agent
        }else{
            matlabver = matlabver + "\\bin"   // Windows agent
        }   
        withEnv(["PATH + MATLAB = $matlabver"]) {   // Prepend matlabroot/bin to the PATH variable
            runMATLABCommand 'pwd,matlabroot'
        }
    }
}
