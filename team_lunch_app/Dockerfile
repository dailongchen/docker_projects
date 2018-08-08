FROM ubuntu:18.04
MAINTAINER dailongchen@163.com
ENV REFRESHED_AT 2018-08-07

ENV APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE DontWarn

RUN apt-get update -qq && apt-get install -qqy python3.6 python3-pip

RUN pip3 install uwsgi
RUN pip3 install Django
RUN pip3 install django-cors-headers

RUN apt-get install -qqy curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -qqy nodejs

RUN mkdir -p /var/log/uwsgi

ENV TEAM_LUNCH_APP_HOME /opt/team_lunch_app
VOLUME ["$TEAM_LUNCH_APP_HOME"]

WORKDIR $TEAM_LUNCH_APP_HOME
ENTRYPOINT ["uwsgi", "--ini", "slack_apps.ini"]