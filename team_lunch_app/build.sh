#!/bin/sh

APP_FOLDER=app

docker build -t solonchen/teamlunchapp .

# run build script
docker run -it --rm -v $PWD/$APP_FOLDER:/opt/team_lunch_app --entrypoint "/bin/sh" solonchen/teamlunchapp build.sh
