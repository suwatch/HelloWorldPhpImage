REM build docker image (copy Dockerfile.cmd Dockerfile /y)
REM docker <action> -t <name> <Dockerfilepath>
docker build -t helloworldphpimage .

REM list docker images
docker image ls

REM run docker image
docker run --name helloworldphp helloworldphpimage
docker container start helloworldphp --interactive

REM list/stop/start/remove container
docker container ls --all
docker container start helloworldphp --interactive
docker container start helloworldphp
docker container stop helloworldphp
docker container rm helloworldphp

REM build docker image (copy Dockerfile.nginx Dockerfile /y)
REM build docker image (copy Dockerfile.apache Dockerfile /y)
REM docker <action> -t <name> <Dockerfilepath>
docker build -t helloworldphpimage .

REM list docker container with image
REM forward 8080 to docker 80
docker run --detach --publish 8080:80 --name helloworldphp helloworldphpimage

REM Dockerfile.apache
curl localhost:8080 -v

REM Dockerfile.nginx
curl localhost:8080/default.html -v

REM Dockerfile-less
TODO docker run -it --rm --name helloworldphp -v "$PWD":/usr/src/scripts -w /usr/src/scripts php:7.4-cli php src\index.php
TODO docker run -it --rm --name helloworldphp -v "$PWD":/usr/src/myapp -w /usr/src/myapp php:7.4-cli php your-script.php



