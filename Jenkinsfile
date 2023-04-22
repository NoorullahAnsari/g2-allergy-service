pipeline{

agent any

stages{

stage('Checkout'){

steps{

git branch: "main", url: 'https://github.com/NoorullahAnsari/g2-allenrgy-service.git'

}

}

stage('Build'){

steps{

sh 'chmod a+x mvnw'

sh './mvnw clean package -DskipTests=true'

}

post{

always{

archiveArtifacts 'target/*.jar'

}

}

}

stage('DockerBuild') {

steps {

sh 'docker build -t services/g2-allergy-service:latest .'

}

}

stage('Login') {

steps {

sh 'echo Noorullah@8227907838 | docker login -u NoorullahAnsari1996 --password-stdin'

}

}

stage('Push') {

steps {

sh 'docker push services/g2-allergy-service'

}

}

}

post {

always {

sh 'docker logout'

}

}

}