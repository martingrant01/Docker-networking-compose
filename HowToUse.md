# Guidance about this project

## For seeing the original details of the task
Check the README.md which has all the details of what had to be achieved in this task.

## What does it do

This program runs a flask-nginx webserver with simulated clients and a secret instance in Docker containers.
If you would like to you can connect to these clients to check their boundaries and play around with them.
As for the webserver part, the webserver is going to run on host machines port 80.

## Prerequisites
- The whole project was tested on Linux so it's the best if you use Linux as well for checking it out.
- Docker Engine must be installed on your machine.

## How to use the repository
1. Make sure you are located inside the repository.
    - ls command should look like this --> FilesForImages     Howtouse.md        README.md          docker-compose.yml
2. Run the command docker-compose up -d for Linux version, for Mac use docker-compose -f docker-compose-Mac.yml up -d
    - This will start all the containers in the background so you're terminal stays ready for use.
3. (Optional) To get into one of the clients role
    - Run docker ps/ docker-compose ps to see the name of your containers
    - Run docker exec -it {container_name} sh --> This command will start sh inside alpine container so you can act like it was a Linux machine.
4. On the machine you are running Docker on, you should see the website in your browser under http://localhost.
5. Run docker-compose down when you'd like to remove all containers created previously on Linux, on Mac use docker-compose -f docker-compose-Mac.yml down.