# Week 4 — Postgres and RDS

# Todo Checklist 

1. [X] Create RDS Postgres Instance
2. [X] Create Schema for Postgres 
3. [X] Watch Ashish's Week 4 - Security Considerations 
4. [X] Bash Scripting for common database actions 
5. [X] Install Postgres driver in backend application 
6. [X] Connect Gitpod to RDS Instance
7. [X] Create AWS Cognito trigger to insert user into database 
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

Create a file for your DB sessions which will check for processes that are running. 

<img src= ./images/DBSesh.png>

<br />

Below is an example of what would be shown if 'db-sessions' is executed in the terminal. 

<img src= ./images/SeshProof.png>

<br />

To speed up your workflow, you can create a bash script to run all of those bash scripts to be more efficient. 
Below is a script to execute that. 

<img src= ./images/Setup.png>

<br />

Once you execute the the bash script, it should run exactly like this;

<img src= ./images/SetU.png>


## Installing driver for Postgres


To install the the Postgres client driver, you will need to import the following lines into the `requirements.txt` file.

<img src= ./images/PSQLDriver.png>


<br />

In order to create a pool connection, you will need to create a file within the `lib` folder and add the following code. This will also help us create a query.

<img src= ./images/ConPool.png>


<br />

We will also need to make sure we pass the connection url through to the `docker compose` file. 

<img src= ./images/ConURL.png>

<br />

Once that is done, we will ad this to the home activities page to create an api call. 

<img src= ./images/APICall.png>

<br />

The end reuslt should return the following.

<img src= ./images/APIResult.png>

<br />



## Connect Gitpod to RDS Instance

To connect Gitpod to RDS, you will first need to find your Gitpod IP. You can do so by running this command in the terminal: "(curl ifconfig.me)". You can then head to your RDS security group inbound rules and enter in this information.

<img src= ./images/EditInbound.png>


<br />

We will need to create a script that updates the security groups which will be convenient for when Gitpod changes its IP address everytime it launches. 

<img src= ./images/EditSG.png>

Setting these variables will make it easy to modify while working in Gitpod.

<br />

Below will allow the security group rules to be modified when using Gitpod.

<img src= ./images/EditSGG.png>

If the result outputs true, then the changes will reflect on the AWS management console under inbound rules. 

<img src= ./images/CMIR.png>

<br />


Create a file within `backend-flask/bin` and title it 'rds-update-sg-group' which should update the security group rule when executed. 

<img src= ./images/RDSScript.png>

<br />

You can add this into the  `.gitpod.yml` file so that it executes when Gitpod is opened. 

<img src= ./images/gityamlU.png>

<br />

To implement a custom authorizer for Cognito, we will need to create folder within `backend-flask` titled 'lambdas' in order to create our function and send it off to Lambda. This will allow us to verify our user. 
<img src= ./images/PostConfirm.png>

We can then create a Lambda function via the AWS console and deploy it to save changes.
<img src= ./images/LamCode.png>


<br />


Now we need to set the enviroment variables in Lambda. 

<img src= ./images/LamVar.png>


Next we need to add a layer. 

<img src= ./images/Layer.png>

<br />

You will need to create a policy to allow Lambda to create a network card to allow VPC access.

<img src= ./images/PolicyIAM.png>


Once those permissions are attached, we can create the VPC within lambda. 

<img src= ./images/LamVPC.png>

<br />

Once the VPC is created, we can finally try to sign up in Cruddur. As soon as it takes the confirmation code, it should direct you to this page.

<img src= ./images/Cogtest.png>

<br />

Once you create a user via the Cruddur website, you can confirm from cloud watch logs if it succeeded or has any errors. 

<img src= ./images/DBUser.png>
As you can see in this photo, there were no errors present so we can assume the user information has been imported into our database. We can confirm this by connecting into our DB and running 'select * from users;'

<img src= ./images/UserDataDB.png>
We have successfully created an AWS Cognito trigger to insert user data into our database.

<br />

## Create new activities with a database insert

In Cruddur, enter in a crud and hit enter. Once you do, hit refresh and it should post the crud!

<img src= ./images/CruddurActivity.png>


You can also check while connected to your DB by running 'select * from activities;' and it should output the following;

<img src= ./images/DBActivity.png>












