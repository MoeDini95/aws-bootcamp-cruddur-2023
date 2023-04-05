# Week 4 — Postgres and RDS

# Todo Checklist 

1. [X] Create RDS Postgres Instance
2. [ ] Create Schema for Postgres 
3. [ ] Watch Ashish's Week 4 - Security Considerations 
4. [ ] Bash Scripting for common database actions 
5. [ ] Install Postgres driver in backend application 
6. [ ] Connect Gitpod to RDS Instance
7. [ ] Create AWS Cognito trigger to insert user into database 
8. [ ] Create new activities with a database insert 



## Create an RDS Postgres Instance 

To create a postgres instance via the CLI, you will need to make sure your are connected to AWS CLI via gitpod and enter in the following into the terminal. 
<img src= ./images/RDSIst.png>

<br />


Once that is entered in, you can head to the AWS console and under RDS you will see your instance created. From there, it will take about 15 minutes to be available.

<img src= ./images/AWSRDS.png>

<br />

To create a database, you will first need to connect to psql via the psql client cli tool. Once you are connected, you can run 'create database cruddur;" to create it. 

<img src= ./images/CreateDB.png>

<br />

Create a `sql` file within your backend-flask directory and add the following command to create an extension. This will allow Postgres to generate out UUIDs which are unique values across databases. This allows you to merge rows from multiple databases. 

<img src= ./images/RunScript.png>

<br />


Create a folder named `bin` within the `backend-flask` directory and create 3 files that will be used as shell scripts to create the database. 

<img src= ./images/Bash.png>

<br />

Once those are created, you will need to change the modes on those bash scripts so that you can write and execute to create the DB. 
Once that is complete, enter in the following within the `db-drop` file so that when you run it via the CLI, you will be able to drop the database. 

<img src= ./images/DBDrop.png>
