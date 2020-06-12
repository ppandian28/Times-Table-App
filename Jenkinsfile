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
stage('scm checkout') {
steps {
git credentialsId: '5f59e6e8-8b32-4c30-8461-bd17c2ac4fac',
url:'https://github.com/SangaviJayagopi/matlab-plugin-bash-repo'
}
}
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
