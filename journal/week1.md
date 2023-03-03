# Week 1 — App Containerization

# Todo Checklist 

1. [X] Watch how to ask for Technical Help 
2. [X] Watch Grading homework Summaries 
3. [X] Watch week 1 Live Stream
4. [X] Watch Spending considerations by Chirag
5. [X] Watch Container Security Considerations by Ashish 
6. [X] Containerize Application (Dockerfiles, Docker Compose)
7. [X] Create a notification feature (Backend & Frontend)
8. [X] Write a Flask BackendEndpoint for Notifications 
9. [X] Write a React Page for Notifications 
10. [X] Run a DynamoDB local container and make sure it works
11. [X] Run Postgres container and make sure it works



# Containerize Application (Dockerfile, DockerCompose) 


<img src= ./images/ContainerizeBackend.png>

- This dockerfile contains all the commands needed to assemble the backend image 


- The command at the bottom allows us to run flask 


<img src= ./images/PythonLibInst.png>
- Navigate into the /backend-flask directory 
- Install the Python library Plugins 


<img src= ./images/AppRun.png>
- Run the server via gitpod 


<img src= ./images/Port4567.png>
- Notice a port becomes available 
- You can click on the lock symbol to open the port and access the page



<img src= ./images/InternalError.png>
- the page is pointing to a different endpoint where you will have to add 'api/activities/home' at the end of the url.
- You will be welcomed to an Internal Server Error page 
- This is normal as you will need environment variables set up when you start up the server 





# Adding Environment Variables 
If you go into '/backend-flask/app.py' you will notice that there are 2 environment variables (BACKEND_URL & FRONTEND+URL) that need to be set up
<img src= ./images/EmptyVar.png>

- You can set variables by doing the following:
<img src= ./images/SetVar.png>


Once Variables are set, you can run the server, 
<img src= ./images/JSONData.png>
Once the page is opened you will be able to see data. This confirms that it is indeed running. 

<br />

# Build Docker image for the backend
The Docker build command builds a docker image from the dockerfile 
Make sure to go up a directory.(Use cd to change directory and .. to move back)
<img src= ./images/DockerBuild.png>
- -t stands for a name or optionally a tag 
- looks for a docker file in the backend-flask folder 


<img src= ./images/DockerImages.png>
- here you can enter in the 'docker images' command to display the created images. 


<img src= ./images/DockerExt.png>
- You can also confirm if the image exists by installing the docker extension on VSCode.


<br />

# Running Image 
You can run your image with the 'docker run' command
<img src= ./images/ImageRun.png>
- You will notice the port open up once you do 
- You will be greeted with a 404 error which means that there are no environment variables set
- We will need to confirm if there are any environment variables set in our container 
- to do this we can go in to the container shell and check the current env vars set 

# Checking environment variables in container shell 
<img src=./images/AttachShell.png>
- You can go into the docker extension and right click on the running container and select attach shell to SSH into the shell

<br />

<img src= ./images/ContainerShell.png>
- From here we can run the 'env' command to view the current set variables. We can confirm there are no environment variables set
- We will need to set the environment variables locally in order to pass the command from our machine 


<img src= ./images/ResetEnv.png>
- You can set the env vars with the export command 
- And you can confirm if the variables are set with 'env | grep' command 


## Run container 
Once the variables are set, you can run the container 
<img src= ./images/RunContainer.png>


## Run Container in Background 
For terminal convenience, you can add the -d flag to run the container in the background.
<img src= ./images/RCB.png>




## Containerize Frontend 
<img src= ./images/NpmInst.png>
 - Need to install the node dependencies before creating a container 


## Creating a docker file 
<img src= ./images/DFFE.png>
- You will need to create a dockerfile and place it within the ######frontend-react-js folder 

## Creating a docker-compose file 
This will be created at the root of your project 
<img src= ./images/DockerCompose.png>
- This docker-compose file will allow us to run multiple containers at the same time 
- This will reduce the amount of terminals needed to run both backend and frontend containers 


## Docker-Compose
<img src= ./images/DC-up.png>
- Here is a way to run docker compose up rather than typing the 'docker compose up' command 


<br />

## Ensuring Frontend runs successful
<img src= ./images/Frontend.png>
- Once you open the port, you will be greeted with the Cruddur homepage 


## Creating notification feature 

<img src= ./images/ApiNoti.png>

- Updating the Api to add notifications 


# Write a Flask Backend Endpoint for Notifications 
<img src= ./images/BackendApi.png>
- Creating new notifications for backend endpoint

# Write a React Page for Notifications
<img src= ./images/FrontendNotification.png>
- Implementing the notification page on vscode 


<img src= ./images/Notificationpage.png>
- Once the code is saved, you will be able to head into the notifications page


# Run a DynamoDB local container and make sure it works

## DynamoDB Local Container
<img src= ./images/DynamoLocalCon.png>




# Run Postgres container and make sure it works


## Postgres local container
<img src= ./images/PostgresLocalCon.png>



## Adding Postgres client onto Gitpod 
<img src= ./images/PosgresGitpod.png>



## Adding Database Explorer 
<img src= ./images/DatabaseExplorer.png>
Creating a database connection with database explorer

<img src= ./images/Databases.png>
Once you get a successful connection, you will be able to see the tables


## Connect to the database via the terminal 
<img src= ./images/PGT.png>
To connect to the database via the terminal:

- type in 'psql -h localhost -U postgres' into the terminal 
- enter 'password' as the password which is stated in the gitpod.yml file 
- you can load the list of databases with '\l' 








