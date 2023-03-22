# Week 3 — Decentralized Authentication

# Todo Checklist

1. [ ] Watched Ashish's Week 3 - Decenteralized Authentication
2. [X] Set Cognito User Pool
3. [X] Implement Custom Sign-in Page
4. [ ] Implement Custom Sign-up Page
5. [ ] Implement Custom Confirmation Page 
6. [ ] Implement Custom Recovery Page 
7. [ ] Verify JWT token server side
8. [ ] Watch about different approachers to verifying JWTs


## Set Cognito User Pool 

First, we need to create the user pool manually in the AWS console management within the Cognito service.

<img src= ./images/UserPool.png>


<br />


You will also need to install AWS Amplify within the `frontend-react-js` directory. 
<img src= ./images/AmpInst.png>


<br />

Once Amplify is installed, you will need to import its code into the `App.js` file.

<img src= ./images/ImportAmp.png>


<br />


You will need to set these environment variables in your docker compose file.
<img src= ./images/AmpDC.png>


<br />

In order to check authentication, you will need to replace the current authentication code and replace it with the updated version.
<img src= ./images/CheckAuth.png>

<br />

## Set up Sign in Page 

You will need to import the following code to set up the sign in page.
<img src= ./images/SignIn.png>






