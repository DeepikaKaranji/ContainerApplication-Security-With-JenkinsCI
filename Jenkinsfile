def workspace_loc
pipeline {
    agent any
    stages{
        stage('checkout_code'){
            checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/Dcoder99/Container-Security-With-JenkinsCI.git']]])
            workspace_loc = pwd()
        }
        stage('build_docker_image'){
            agent {
                dockerfile true
            }
        }
        stage('static_analysis') {
            steps {
                build job: 'static_analysis', parameters: [string(name: 'myWorkspace', value: workspace_loc)]
            }
        }
        stage('run_container'){
                build job: 'run_container', parameters: [string(name: 'myWorkspace', value: workspace_loc)]
        }
    }
}