# Week 2 — Distributed Tracing

# Todo Checklist 

1. [X] Watch Week 2 Live Stream 
2. [ ] Watch Ashish's Week 2 - Observability Considerations 
3. [ ] Instrument Honeycomb with Open Telemetry (OTEL)
4. [ ] Instrument AWS X-Ray
5. [ ] Configure custom logger to send to CloudWatch Logs
6. [ ] Integrate Rollbar and capture error 



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
Add the code from the honeycomb.io documentation into the 'app.py' file which will create a tracer as well as a flask instrumentation so that Honeycomb can receive any data requests. 




<br />

Quick tip, you can add this to your <gitpod.yml> file to open ports automatically when you run docker compose up. 
<img src= ./images/OpenPort.png>

<br />

<br />
You will be able to see Spans appear on your Honeycomb dashboard
<img src= ./images/Spans.png>


<br />
## Adding a Span into <home_activities.py> so we can visualize our data. 
 - To create a span, you will need to acquire a trace. 
 - Steps to create a span and acquire a trace can also be found in the honeycomb.io documentation pages 

 <img src= ./images/Trace.png>

<br />

## Running a Query
You will now be able to see all of your traces via the honeycomb dashboard and when you run a query it looks over all spans in honeycomb. 

<img src= ./images/>









