FROM ubuntu:18.04
MAINTAINER dailongchen@163.com
ENV REFRESHED_AT 2018-08-06

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE DontWarn

RUN apt-get update -qq && apt-get install -qqy gnupg curl
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

RUN echo deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable > /etc/apt/sources.list.d/docker.list
RUN apt-get update -qq && apt-get install -qqy apt-transport-https ca-certificates docker-ce

RUN curl -fsSL https://pkg.jenkins.io/debian/jenkins-ci.org.key | apt-key add -
RUN echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list
RUN apt-get update -qq && apt-get -qqy install jenkins openjdk-8-jre

ENV JENKINS_HOME /opt/jenkins/data
ENV JENKINS_MIRROR http://mirrors.jenkins-ci.org

RUN mkdir -p $JENKINS_HOME/plugins
RUN curl -sf -o /opt/jenkins/jenkins.war -L $JENKINS_MIRROR/war-stable/latest/jenkins.war

ADD ./dockerjenkins.sh /usr/local/bin/dockerjenkins.sh
RUN chmod +x /usr/local/bin/dockerjenkins.sh

VOLUME /var/lib/docker
VOLUME $JENKINS_HOME

EXPOSE 8080

ENTRYPOINT ["/usr/local/bin/dockerjenkins.sh"]

