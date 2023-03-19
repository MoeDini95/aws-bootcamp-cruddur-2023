# Week 2 — Distributed Tracing

# Todo Checklist 

1. [X] Watch Week 2 Live Stream 
2. [X] Watch Chirag Week 2 - Spending Considerations 
3. [X] Watch Ashish's Week 2 - Observability Considerations 
4. [X] Instrument Honeycomb with Open Telemetry (OTEL)
5. [X] Instrument AWS X-Ray
6. [X] Instrument AWS X-Ray Subsegments
7. [X] Configure custom logger to send to CloudWatch Logs
8. [ ] Integrate Rollbar and capture error 



## Managing Honeycomb on Gitpod 
<img src= ./images/OTELDC.png>
Adding these environment variables into the docker compose file allows us to configure Open telemetry to communicate to honeycomb.io

Create an environment in Honeycomb 
<img src= ./images/HoneyEnv.png>
This will allow us to see our datasets 



## Installing Python dependencies for Instrumentation 

<img src= ./images/PyComb.png>
Installing these packages will allow us to instrument our backend flask. Documentation on instrumenting your flask app can be found on the Honeycomb.io documentation section

  You will need to be in the 'backend-flask' directory in order to install the packages <br />

<br />

<img src= ./images/BackEndHC.png>
Add the code from the honeycomb.io documentation into the `app.py` file which will create a tracer as well as a flask instrumentation so that Honeycomb can receive any data requests. 




<br />

Quick tip, you can add this to your `gitpod.yml` file to open ports automatically when you run docker compose up. 
<img src= ./images/OpenPort.png>

<br />

<br />
You will be able to see Spans appear on your Honeycomb dashboard
<img src= ./images/Spans.png>


<br />

## Adding a Span into `home_activities.py` so we can visualize our data. 
 - To create a span, you will need to acquire a trace. 
 - Steps to create a span and acquire a trace can also be found in the honeycomb.io documentation pages 

 <img src= ./images/Trace.png>

<br />

## Running a Query
You will now be able to see all of your traces and attributes that were set via the honeycomb dashboard when you run a query.

<img src= ./images/Attributes.png>


# Instrument AWS X-Ray

You will need to install the AWS X-Ray SDK for Python. You can add the following command into your requirements.txt file under the `backend` directory. 
<img src= ./images/XraySDK.png>

<br />

You will need to create a json file which wil set up sampling rules in X-Ray 
<img src= ./images/XRayRes.png>

<br />

## Creating an X-Ray Group 
Enter in the following command to create an X-Ray Group in AWS 
<img src= ./images/XRayGroup.png>

<br />

You will be able to see within the AWS console under the X-Ray service that the group has been created. 
<img src= ./images/X-RayGroup.png>


Creating a Sampling Rule 
 Run the following command in order to create a sampling rule in AWS X-Ray.

 <img src= ./images/SampleRule.png>

 <br />

 You can confirm that the Sampling rule has been created in the AWS console 
 <img src= ./images/CloudwatchSR.png>

<br />


<br />


## Add Daemon Service to Docker Compose 
<img src= ./images/X-RayDae.png>


<br />

Once you run Docker compose up and visit your backend, you will be able to see data populate on Cloudwatch traces. 

<img src= ./images/CWTrace.png>

<br />

## Instrument AWS X-Ray Subsegments

<img src= ./images/SubSeg.png>

- Resolved the issue on subsegments not showing up on Cloudwatch

<br />

<img src= ./images/MockData.png>

<br />

## Configure custom logger to send to CloudWatch Logs

First you will have to install 'watchtower' in your 'requirements.txt' file within the `backend-flask` directory. 
<img src= ./images/Watchtower.png>

<br />

Add the following codes into `app.py` and `home_activities.py` to configure Logger to use CloudWatch 

<img src= ./images/LogInfo.png>

<br />

You will be able to see log events populate on the Cloudwatch Log Events dashboard once the logger information has been configured!
<img src= ./images/CWL.png>

<br />

## Integrate Rollbar and capture error 

First you need to install Blinker and Rollbar in your 'requirements.txt' file. 

<img src= ./images/RollbarInstall.png >

<br />

You will also need to set your access token as an environment variable

<img src= ./images/RollEnv.png>

<br />

Add this code in to configure Rollbar to communicate to our environment.

<img src= ./images/Rollbarinit.png>
















