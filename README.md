# Introduction to Docker networking compose

## Story

You want to make a website with 2 types of users. The normal users and VIPs. You see the hassle that would come with managing what each of these user types can see, so you decide it would be better to provision a setup where you can store secrets that only VIPs can see on a Docker level.

## What are you going to learn?

* How to make docker-compose file
* Learn to use docker-compose
* Learn to use docker networks

## Tasks

1. Make a docker-compose file with own Nginx-Flask image from ECR with `host` network.
    - Flask is running in localhost with your Nginx-Flask Docker image.

2. Create an alpine `Docker image` with `secret.txt`.
    - The secret can be readable.

3. Add the Secret image to the `docker-compose` file and make sure that it uses `none` network.
    - Secret image is added to the `docker-compose` file.
    - The secret can't be reachable over the network.

4. Add two alpine container to the `docker-compose` file and make sure that it uses `bridge` network and `linked` to the Flask's container.
    - Clients image is added to the `docker-compose` file.
    - The flask application can be reachable from the `client` but the secret can't.

5. Create own bridge type network with `vip-clients` name.
    - The `vip-clients` bridge type network exists.

6. Add another two alpine container to the `docker-compose` file and make sure that it uses `vip-clients` network.
    - VIP clients image is added to the `docker-compose` file.
    - The flask application can be reachable from the `VIP client` but the secret can't and the normal clients can't either.

## General requirements

None

## Hints

- Run the docker-compose with the ```docker-compose up -d``` (the -d means detach).
- For the connection check if you can use the ```ping``` command.
- If you want to connect two separated networks, use the ```link``` in the compose file.
- A lot of docker images have `alpine` versions, and these are always the lightest versions of those images. Most distributions run a ton of services by default.
This might be reasonable for a non-Docker set up, but chances are your Dockerized application doesn't need most of what's started by default.
Alpine takes a much different approach. It doesn't start too much up by default and expects you to only start the things you need. This is perfect for a Dockerized application.

## Background materials

* <i class="far fa-book-open"></i> [Docker Networking](https://docs.docker.com/network/)
* <i class="far fa-book-open"></i> [Docker Compose](https://docs.docker.com/compose/)
* <i class="far fa-exclamation"></i> [What is the use of HOST and NONE network in docker](https://stackoverflow.com/questions/41083328/what-is-the-use-of-host-and-none-network-in-docker/43873743#43873743)
