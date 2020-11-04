#using docker image golang
docker pull golang

#using docker image to build go src code 
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp golang go build -v