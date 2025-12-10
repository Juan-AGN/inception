# DEV DOCUMENTATION

For setting up the environment variables, an **.env** file is required. This file will be in the **srcs folder** and contain something like:

>**MYSQL_ROOT_PASSWORD=_[YOUR PASSWORD]_**  
>
>**MYSQL_DATABASE=_[YOUR MYSQL DATABASE]_**  
>
>**MYSQL_USER=_[YOUR MYSQL USER]_**  
>
>**MYSQL_PASSWORD=_[YOUR MYSQL USER PASSWORD]_**  
>
>**WORDPRESS_USER=_[YOUR WORDPRESS ADMIN USER]_**  
>
>**WORDPRESS_PASSWORD=_[YOUR WORDPRESS ADMIN USER PASSWORD]_**  
>
>**WORDPRESS_MAIL=_[YOUR WORDPRESS ADMIN USER MAIL]_**  
>
>**WORDPRESS_BASIC_USER=_[YOUR WORDPRESS BASIC USER]_**  
>
>**WORDPRESS_BASIC_PASSWORD=_[YOUR WORDPRESS BASIC USER PASSWORD]_**  
>
>**WORDPRESS_BASIC_MAIL=_[YOUR WORDPRESS BASIC USER MAIL]_**  

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

Also, the folders **/home/juan-ant/data/wordpress** and **/home/juan-ant/data/database** are required.

## Accessing Containers
To access containers, use:

**docker exec -ti _[container_name]_ sh**

## Checking Container Status
Check the status of deployed containers with:

**docker ps**

or

**docker container ls**

and for volumes:

**docker volume ls**

## Where is the project data and how does it persist?

This project uses a **bind-mounted volume** where it stores **database** and **WordPress** files. These folders can be found at **/home/juan-ant/data/** and can be created via the **Makefile** or **manually**.

For data deletion, it must be done by the user. Even if you delete the Docker volumes, the data still persists because it is stored on your local machine.
