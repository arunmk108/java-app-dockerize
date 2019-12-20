## Docker-PetClinic
>Docker and Docker-Compose should be installed before execution the below commands

###### This applaiction consists of petclinic jar file which is generatoied after the `mvn package` and  database `mysql`

1. Clone the Repo
` git clone https://gitlab.com/<username>/docker-petclinic.git`

2. Build the app
`docker-compose build`

3. Push the images to dockerhub
`docker-compose push`
> if images are not pushed make sure you login to the docker hub first `docker login` and then push

4. Run the app
` docker-compose up -d`

> __Tag_version:__  The docker build tag version is maintaied in the [docker-compose](https://gitlab.com/akhilreddyjirra/docker-petclinic/blob/master/docker-compose.yml) file under the section of 
`image: <dockerhub_username>/petclinic:<tag_version>`

You can then access petclinic here: http://localhost:8080/

![Alt Text](https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png)



 
