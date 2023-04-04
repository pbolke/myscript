FROM centos:7

#Install wget 
RUN yum -y install wget; yum clean all

# Download JDK version 17
RUN wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm

# Install JDK
RUN rpm -ivh jdk-17_linux-x64_bin.rpm

