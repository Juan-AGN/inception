_This project has been created as part of the 42 curriculum by juan-ant._
<br>
# INCEPTION
## 1 - Description
Inception is a project about Docker, it consists in setting up:
 - Container for nginx
 - Container for Wordpress and PHP
 - Container for MariaDB

And setting up the required connections for each container, being able that way to deploy a functional Wordpress.

 - **Virtual Machines vs Docker** - Virtual machines consist of an emulation of kernel and software; Docker only uses the software, using the kernel of the host machine.
 - **Secrets vs Environment Variables** - Secrets are applied during machine creation; env variables are used during the container's execution.
 - **Docker Network vs Host Network** - The host network is the normal environment of your machine; Docker networks emulate a network where the containers are on the same network and use the container name as its DNS.
 - **Docker Volumes vs Bind Mounts** - When a Docker volume is created, the volume creates a new folder where the files are stored, and contents get deleted when the volume is deleted. Bind mounts are mounted over a host machine's folder; when the volume is deleted, the mounted folder's content is not deleted.

Design choices:
 - Secrets are stored in an env file; the project limitations make it difficult and less consistent to use secrets.
 - This Inception uses two networks: one for nginx and PHP-Wordpress, and another one for MariaDB and PHP-Wordpress. This is to better emulate the structure shown in the subject, where nginx only communicates with PHP-Wordpress and PHP-Wordpress only communicates with MariaDB.

## 2 - Instructions
This project requires Docker and contains a Makefile to build and start the containers. It also sets up the necessary folder for the volumes to be stored locally.

The Makefile commands are:
 - **make build** for setting up the volumes folder and the Docker images.
 - **make up** to start the images.
 - **make all** to do both make build and make up.
 - **make clean** to stop the containers.
 - **make fclean** to stop the containers and delete Docker volumes.
 - **make prune** to remove everything from Docker.
 - **make vprune** to delete all Docker volumes.

For setting up with the .yml file, you must run: `docker-compose build` and `docker-compose up` in the srcs folder.
To access the containers, use **exec -ti _[container name]_**.

## 3 - Resources
 - <a href="https://docs.docker.com/reference/">Docker documentation</a>
 - <a href="https://mariadb.org/documentation/">MariaDB documentation</a>
 - <a href="https://wordpress.org/documentation/">Wordpress documentation</a>
 - <a href="https://www.php.net/docs.php">PHP documentation</a>

All config files are based on the base .conf files found in the default service installation.

AI used for eventual questions (E.X.: there was a point when I wasn’t sure about something in SH syntax; I wasn’t able to find an example, I asked the AI — it was a missing space).

