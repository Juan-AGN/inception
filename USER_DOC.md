# BASIC WORDPRESS 101

This project provides **Nginx** for serving static pages and acting as a firewall, **WordPress** which provides an easy-to-use interface with **user management**, **databases**, and **easy page creation**, and **MariaDB** for handling the **databases**.

This project requires Docker and contains a Makefile to build and start the containers. It also sets up the necessary folders for the volumes to be stored locally.

## Makefile Commands
 - **make build** — sets up the volumes folder and builds the Docker images.
 - **make up** — starts the containers.
 - **make all** — runs both *make build* and *make up*.
 - **make clean** — stops the containers.
 - **make fclean** — stops the containers and deletes Docker volumes.
 - **make prune** — removes everything from Docker.
 - **make vprune** — deletes all Docker volumes.

## Docker Compose Setup
To set up using the **.yml** file, run the following inside the **srcs** folder:

**docker-compose build**

**docker-compose up**

Also, the folder **/home/juan-ant/data/wordpress** and **/home/juan-ant/data/database** are required.

## Accessing Containers
To access containers, use:

**docker exec -ti _[container_name]_ sh**

## Accessing MySQL / MariaDB
To inspect databases in MariaDB, use:

docker exec -ti MariaDB sh  
**mysql _[mysql_admin_user]_**

Then use SQL queries to inspect the databases.  
Basic SQL syntax reference: https://www.w3schools.com/sql/sql_syntax.asp

To select a database, use:

**USE _[database_name]_;**

WordPress user credentials are stored in the **wp_users** table.

## Checking Container Status
Check the status of deployed containers with:

**docker ps**

or

**docker container ls**

## Accessing WordPress Admin Panel
To access the **admin pannel / editor pannel**, navigate to:

**_[domain]_/wp-admin**

and log in with your WordPress user.
