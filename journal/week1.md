# Week 1 — App Containerization

# Todo Checklist 

1. [X] Watch how to ask for Technical Help 
2. [X] Watch Grading homework Summaries 
3. [X] Watch week 1 Live Stream
4. [X] Watch Spending considerations by Chirag
5. [X] Watch Container Security Considerations by Ashish 
6. [ ] Containerize Application (Dockerfiles, Docker Compose)
7. [ ] Create a notification feature (Backend & Frontend)
8. [ ] Write a Flask BackendEndpoint for Notifications 
9. [ ] Write a React Page for Notifications 
10. [ ] Run a DynamoDB local container and make sure it works
11. [ ] Run Postgres container and make sure it works



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


# Build Dockerfile 
The Docker build command builds a docker image from the dockerfile 
Make sure to go up a directory.(Use cd to change directory and .. to move back)
<img src= ./images/DockerBuild.png>
- t stands for a name or optionally a tag 
- looks for a docker file in the backend-flask folder 


<img src= ./images/DockerImages.png>
- here you can enter in the 'docker images' command to display the created images. 


<img src= ./images/DockerExt.png>
- You can also confirm if the image exists by installing the docker extension on VSCode.
