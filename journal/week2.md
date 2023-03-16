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


## Installing Python dependencies for Instrumentation 

<img src= ./images/PyComb.png>
Installing these packages will allow us to instrument our backend flask. Documentation on instrumenting your flask app can be found on the Honeycomb.io documentation section [https://docs.honeycomb.io/getting-data-in/opentelemetry/python/]
## You will need to be in the 'backend-flask' directory in order to install the packages

-- 


<img src= ./images/BackEndHC.png>
Add the code from the honeycomb.io documentation into the 'app.py' file which will create a tracer as well as a flask instrumentation so that Honeycomb can receive any data requests. 










