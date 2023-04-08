# Week 4 — Postgres and RDS

# Todo Checklist 

1. [X] Create RDS Postgres Instance
2. [X] Create Schema for Postgres 
3. [X] Watch Ashish's Week 4 - Security Considerations 
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


Create a folder named `bin` within the `backend-flask` directory and create 5 files that will be used as shell scripts to create, drop, connect, seed the database, as well as load the schema. 

<img src= ./images/DBFiles.png>

<br />

Once those are created, you will need to 'chmod' (Change mode) on those bash scripts so that you can write and execute the DB script. Once that is complete, enter in the following within the `db-drop` file so that when you run it via the CLI, you will be able to drop the database. 

<img src= ./images/DBDrop.png>

<br />

You will also need to enter in the following into your `db-create` bash file in order to create the database. Below is an example as follows.

<img src= ./images/CreateDB1.png>

<br />

This specific script is used to load the schema. 

<img src= ./images/SchemaBash.png>

Below the Bash shell interpreter, you'll notice that we created a print for the shell scripts to show up as a cyan colour to indicate what we are doing.

<br />

The Following script is used to seed the data. 

<img src= ./images/Seed.png>

<br />

Create a folder within `backend-flask` called 'db' and create the following two SQL files:
<br />

One to create the table.
<img src= ./images/CreateTable.png>

<br />

And one to import seed data. 

<img src= ./images/SeedData.png>

<br />

## Bash Scripting for common database actions 

Create a file for your DB sessions whcih will check for processes that are running. 

<img src= ./images/DBSesh.png>

<br />



