#!/bin/sh

APP_FOLDER=app

docker run -d -p 80:8000 --name teamlunchapp -v $PWD/app:/opt/team_lunch_app solonchen/teamlunchapp
# docker run -it -p 80:8000 --rm -v $PWD/app:/opt/team_lunch_app --entrypoint "python3" solonchen/teamlunchapp manage.py runserver 0.0.0.0:8000