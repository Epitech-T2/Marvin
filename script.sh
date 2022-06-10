docker stop my_marvin
docker container rm my_marvin
docker image rm jenkins_img
docker volume rm $(docker volume ls -q)
docker build . -t "jenkins_img"
docker run -p 8080:8080 --name "my_marvin" --env-file var.env jenkins_img
