pipeline {
    agent any

    environment {
        ALIYUN_REGISTRY_CREDENTIAL = credentials("aliyun-registry-credential")
        ALIYUN_REGISTRY_URL = "registry.us-west-1.aliyuncs.com"

        PROJECT_NAME = "x-jenkins"
        IMAGE_NAME = "ifan112/x-jenkins"
    }

    stages {
        // 编译、测试和打包
        stage("Package") {
            steps {
                // sh "mvn clean test package"
                echo "TODO"
            }
        }

        // 构建镜像并推送至阿里云私有镜像仓库
        stage("Image") {
            steps {
                sh "docker build -t ${IMAGE_NAME} ."
                sh "docker tag ${IMAGE_NAME} ${ALIYUN_REGISTRY_URL}/${IMAGE_NAME}"
                sh "docker login -u=${ALIYUN_REGISTRY_CREDENTIAL_USR} -p=${ALIYUN_REGISTRY_CREDENTIAL_PSW} ${ALIYUN_REGISTRY_URL}"
                sh "docker push ${IMAGE_NAME} ${ALIYUN_REGISTRY_URL}/${IMAGE_NAME}"
            }
        }

        // 部署
        state("Deploy") {
            steps {
                echo "TODO"
            }
        }

    }
}