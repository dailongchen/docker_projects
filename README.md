# docker_projects

## Jenkins
to build a self-contained jenkins service

#### to build to image
````shell
> cd Jenkins
> ./build.sh
````

#### to run the container
````shell
> cd Jenkins
> ./run.sh
````
open url http://localhost:8080

## team_lunch_app
a simple tool to maintain the team lunch foundation

#### to build to image
````shell
> cd team_lunch_app
> ./build.sh
````

#### to run the container
````shell
> cd team_lunch_app
> ./run.sh
````
open url http://localhost/lunch_foundation

## some useful docker commands
#### rm stopped container
````shell
> docker rm `docker ps -a -q`
````

#### rm dangling images
````shell
> docker rmi `docker images --filter 'dangling=true' -q --no-trunc`
or
> docker system prune -a
````
