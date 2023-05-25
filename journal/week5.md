# Week 5 — DynamoDB and Serverless Caching

# Todo Checklist 

1. [X] Watch Week 5 Data Modelling Live Stream 
2. [X] Watch Asish's Week 5 - DynamoDB Considerations 
3. [X] Implement Schema Load Script 
4. [X] Implement Seed Script 
5. [X] Implement Scan Script 
6. [] Implement Pattern Scripts for Read and List Conversations 
7. [] Implement Update Cognito ID script for Postgres Database 
8. [] Implement (Pattern A) Listing Messages in Message Group into Application
    - Implement (Pattern B) Listing Messages Group into Application
    - Implement (Pattern C) Creating a Message for an existing Message Group into Application
    - Implement (Pattern D) Creating a Message for a new Message Group into Application
    - Implement (Pattern E) Updating a Message Group using DynamoDB Streams



## Implement Schema Load Script 

Created a separate folder within `backend-flask` which will execute important actions to run for the local dynamodb.

<img src= ./images/SchemaDDB.png>

Once you run the script in the terminal, you should be able to see the following output which indicates whether you created the table. 
<ing src= ./images/CreateTable1.png>

<br />


## Implement Seed Script 
Create a Seed sdk file within `ddb` and import the following code to be able to seed your data. 

<img src= ./images/Seed2.png>

<br />

By running the file within the terminal it should output the following seed data. 
<img src= ./images/SeedData1.png>

<br />

## Implement Scan Script 
Create another file which will scan our data. 

<img src= ./images/ScanScript.png>

Once you run the script, it should populate data similar to this;
<img src= ./images/ScanSD.png>

<br />

## Implement Pattern Scripts for Read and List Conversations 
