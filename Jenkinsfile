node {  
    def matlabroot
    matlabroot = tool 'R2020b'  
    withEnv(["PATH + MATLAB = $matlabroot/bin"]) {
        runMATLABCommand 'matlabroot' 
    }
}
