_This project has been created as part of the 42 curriculum by juan-ant._
<br>
# INCEPTION
## 1 - Description
Inception is a project about docker, it consist in setting up an:
 - Container for nginx
 - Container for Wordpress and PHP
 - Container for MariaDB

And setting up the required connections for each container, being able tath way to deploy an functional Wordpress.

 - **Virtual Machines vs Docker** - Virtual machines consist on an emulation of kernel and software, docker only user the software, using the kernel of the host machine.
 - **Secrets vs Environment Variables** - Secret are aplied during machine creation, env are used during the container's execution.
 - **Docker Network vs Host Network** - The host network is the normal enviroment of your machine, docker networks emulates an networks where the containers are on the same network and uses the container name as its dns.
 - **Docker Volumes vs Bind Mounts** - When a Docker volume is created, the volume creates a new folder where the files are stored and contents get deleted when the volume is deleted, bind volumes are mounted over an host's machine folder, when the volume is deleted, the volume content is not deleted.

Design choices:
 - secrets are stored in an env file, the project limitations makes difficult and less consistent the use of secrets.
 - This inception uses two networks, one for nginx and PHP-Wordpress, and another one for MariaDB and PHP-Wordpress, this is to better emulate the structure shown on the subject, where the nginx only communicates with the PHP-Wordpress and the PHP-Wordpress only communicates with MariaDB.

## 2 - Instructions
This project requires Docker, and contains an Makefile to build and start the containers, it also sets up the neccesary folder for the volumes to be stored locally.

The Makefile comands are:
 - **make build** for setting up the volumes folder and the docker images.
 - **make up** to start the images.
 - **make all** to do all make build and make up.
 - **make clean** to stop the containers.
 - **make fclean** to stop the containers and delete docker volumes.
 - **make prune** to remove everything from docker.
 - **make volume** prune to delete all docker volumes.

For setting up with the .yml file, you must: docker-compose build and docker-compose up in the srcs folder.
To access the containers, use **exec -ti _[container name]_**

## 3 - Resources
 - <a href="https://docs.docker.com/reference/">Docker documentation</a>
 - <a href="https://mariadb.org/documentation/">MariaDB documentation</a>
 - <a href="https://wordpress.org/documentation/">Wordpress documentation</a>
 - <a href="https://www.php.net/docs.php">PHP documentation</a>

All config files based on the base .conf files found in the default service installation.

AI used for eventual questions (E.X.: the was a point when i wasnt sure about something in SH syntax, i wasnt able to find an example, i asked th AI it was an missing space).
