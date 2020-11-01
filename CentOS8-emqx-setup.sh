#EMQ X install

#EMQX pull docker image
docker pull emqx/emqx:4.2.2

#start docker image
docker run -d --name emqx -p 1883:1883 -p 8083:8083 -p 8883:8883 -p 8084:8084 -p 18083:18083 emqx/emqx:4.2.2

#as for Ali could system, need to enable this port in security configuration