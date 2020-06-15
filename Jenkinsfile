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
values 'R2019a', 'R2019b'
}
}
stages {
stage('Run MATLAB commands') {
steps {
runMATLABCommand 'ver'
}
}
stage('Run MATLAB tests')
steps {
runMATLABTests(
testResultsPDF:'myresult/result.pdf'
)
}
}
}
}
}
}
}
