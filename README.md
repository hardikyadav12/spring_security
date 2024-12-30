# spring_security
This is to practice Udemy Course - Spring Security

Some useful commands for running this project:

1) This is to run the ngrok for localhost:8080 so that github webhook can communicate with our locally running jenkins ngrok http http://localhost:8080

We have a Dockerfile which tells us which port to use and the working directory and also has the command to tell docker to run the application. 
So,we first build the docker image and then run that image in a docker container and our docker application starts running on port 9080.

