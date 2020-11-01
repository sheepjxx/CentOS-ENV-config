#install mongodb
#pull mongo docker image. Web to find docker image for mongodb: https://hub.docker.com/_/mongo?tab=tags&page=1
docker pull mongo:4.0

#docker start mongodb
 docker run -itd --name mongo -p 27017:27017 mongo --auth


#接着使用以下命令添加用户和设置密码，并且尝试连接。
#$ docker exec -it mongo mongo admin
# 创建一个名为 admin，密码为 123456 的用户。
#>  db.createUser({ user:'admin',pwd:'123456',roles:[ { role:'userAdminAnyDatabase', db: 'admin'},"readWriteAnyDatabase"]});
# 尝试使用上面创建的用户信息进行连接。
#> db.auth('admin', '123456')

# connect to mongodb inside docker
docker exec -it releasedbin_mongodb_1 mongo admin