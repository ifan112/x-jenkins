FROM jenkinsci/blueocean

USER root

# 安装 maven
RUN cd /opt && \
    wget https://mirror-hk.koddos.net/apache/maven/maven-3/3.8.1/binaries/apache-maven-3.8.1-bin.tar.gz && \
    tar xzf apache-maven-3.8.1-bin.tar.gz && \
    mv apache-maven-3.8.1 maven && \
    rm apache-maven-3.8.1-bin.tar.gz

ENV PATH=/opt/maven/bin:$PATH
