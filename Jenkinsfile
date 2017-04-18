pipeline {
  agent any
  stages {
    stage('git test') {
      steps {
        script {
          git log
        }
      }
    }
    stage('ruby syntax test') {
      steps {
        script {
          chef exec ruby -c recipes/*.rb
        }
      }
    }
    stage('rubocop ruby style tests') {
      steps {
        script {
          chef exec rubocop recipes/*.rb
        }
      }
    }
    stage('chefspec unit test') {
      steps {
        script {
          chef exec rspec
        }
      }
    }
  }
}
