# Week 3 — Decentralized Authentication

# Todo Checklist

1. [X] Watched Ashish's Week 3 - Decenteralized Authentication
2. [X] Set Cognito User Pool
3. [X] Implement Custom Sign-in Page
4. [X] Implement Custom Sign-up Page
5. [X] Implement Custom Confirmation Page 
6. [X] Implement Custom Recovery Page 
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

You will need to import the following code into the `SigninPage.js` file to set up the sign in page.
<img src= ./images/SignIn.png>


<br />


Once that is configured, you can click the Sign in button on the home feed in Cruddur and it should direct you to this page. 

<img src= ./images/MainSignIn.png>

<br />

If you have created a user in Cognito, you should be able to log in with your set credentials and should be welcomed to the home feed with your username shown in the image below. 


<br />

If you are not able to log in, you can create the user account manually through the CLI with the following command.
<img src = ./images/UserCLI.png>

<br />


<img src= ./images/HomePage.png>
You can see that my username is present on the mid-left of the page which indicates that I am logged in. 


<br />




## Set up Sign up Page 
Input the following code into the `SignupPage.js` file to set up the Sign up page.

<img src= ./images/SUP.png>



## Set up custom Confirmation Page
Input the following code into the `ConfirmationPage.js` file which will configure and set up the confirmation page.
<img src= ./images/SignUp.png>





Once that is saved, you can log out of your current session on Cruddur and click on the 'Join Now' option and will be welcomed by this page here.

<img src= ./images/SignUpHome.png>

<br />

Once you enter in your information, you will need to head to the email which you have used and retrieve the confirmation code from that email in order to be verified and to access Cruddur.

<img src= ./images/Confirmation.png>

<br />


## Implement Password Recovery page 
Input the following code into `RecoverPage.js` in order to set up the Forger Password process.  
<img src= ./images/Recovery.png>

<br />

Once that is configured, you can click the 'Forgot Password?' option and then enter your email. This will send a code to your email and will ask you to enter in the access code as well as the new password you would like to set. 

<img src= ./images/REC.png>

<br />

Once you enter in the information required, you will see a successful password reset message and can continue to sign into your account with the updated password. 
<img src= ./images/PassRes.png>




