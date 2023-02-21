# Week 0 — Billing and Architecture

## Required Homework Tasks
1. [X] Create an Admin User and Group within the AWS console
2. [X] Create a Budget and Billing alarm
3. [X] Create an SNS topic
4. [X] Generate AWS Credentials and install AWS CLI on Gitpod
5. [X] Recreate a conceptual diagram for Cruddur
6. [X] Recreate a logical diagram for Cruddur


# Create an Admin User and Group within the AWS console 

<img src= ./images/IAMUser.png>

Created an admin user via the AWS console and provided it admin level permissions.

<img src= ./images/IAMGroup.png>

Later created a Group and added my user account. Created another account and noticed that the 'test-user' account inherited the permissions in the group which was nice.



# Create a Budget and Billing alarm

<img src= ./images/Budget.png>

Created a budget via the console to track Monthly spending as well as another one to track credits spent. 


<img src= ./images/BillingAlarm.png>

Created a Billing alarm through CloudWatch to monitor account charges.

<img src= ./images/SNSTopic.png>

Created an SNS topic to alert me on my Billing alarm via email.



# Generate AWS Credentials and install AWS CLI on Gitpod

 <img src= ./images/GitpodConfig.png>

 Adding this yaml config file installs the AWS CLI onto the Gitpod workspace upon startup.



<img src= ./images/CLIVari.png>

Set the environment variables using 'export' followed by the AWS credentials. This essentially stores the variables into Gitpod.


<img src= ./images/GitpodVariables.png>

Confirming on the gitpod site that the variables have been saved under User settings.


# Recreate a conceptual diagram for Cruddur
Recreated a conceptual diagram for Cruddur using Lucid. The purpose of this diagram is to communicate the architecture at a high level to its stakeholders. 

<img src= ./images/ConceptDiagram.png>



# Recreate a logical diagram for Cruddur
Recreated the logical diagram for cruddur also using Lucid. This diagram is a detailed design of the architecture which outlines the tools needed to operate Cruddur.
<img src= ./images/LogicalDiagram.png>



