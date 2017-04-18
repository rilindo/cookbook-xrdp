pipeline {

  agent any

  stages {
    stage('git test') {
      steps {
        sh "git log"
      }
    }
    stage('ruby syntax test') {
      steps {
        sh "chef exec ruby -c recipes/*.rb"
      }
    }
    stage('rubocop ruby style tests') {
      steps {
        sh "chef exec rubocop recipes/*.rb"
      }
    }
    stage('chefspec unit test') {
      steps {
        sh "chef exec rspec"
      }
    }
  }

}
