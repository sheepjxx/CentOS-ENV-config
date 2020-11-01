#EMQ X install

#EMQX pull docker image
docker pull emqx/emqx:4.2.2

#start docker image
docker run -d --name emqx -p 1883:1883 -p 8083:8083 -p 8883:8883 -p 8084:8084 -p 18083:18083 emqx/emqx:4.2.2

#as for Ali could system, need to enable this port in security configuration

#当 EMQ X 成功运行在你的本地计算机上且 EMQ X Dashboard 被默认启用时，你可以访问 http://localhost:18083 来查看你的 Dashboard，默认用户名是 admin，密码是 public
