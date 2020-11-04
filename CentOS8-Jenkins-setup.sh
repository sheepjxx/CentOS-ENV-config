#我们采用docker hub上的官方镜像进行部署。
docker pull jenkins/jenkins:lts

#create a volume
docker volume create /var/lib/docker/volumes/jenkins_home

#You can also use a volume container:

docker run -d -u root -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker --name test-jenkins -p 8080:8080 -p 50000:50000 -v jenkins_home:/var/jenkins_home jenkins/jenkins:lts


