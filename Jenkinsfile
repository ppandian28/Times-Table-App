// Scripted Pipeline
node {  
    def matlabroot
    matlabroot = tool 'R2020a'  
    withEnv(["PATH+MATLAB = $matlabroot/bin"]) {
        runMATLABCommand 'pwd,matlabroot' 
    }
}
