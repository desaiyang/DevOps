


properties([parameters([choice(choices: 'master\nmain\nfeature-1\nfeature-2', description: 'select the branch you want to build ..', name: 'branch')])])

node {
    stage("scm checkout") {
        
            echo "Pulling code from ${params.branch}"
            git url: "https://github.com/desaiyang/pipelines-java.git", branch: "${params.branch}"
            sh '''
                ls
            '''
            sh 'mvn package'
            
        
        
    }
}
