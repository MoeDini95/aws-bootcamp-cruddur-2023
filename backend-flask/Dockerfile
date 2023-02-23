FROM python:3.10-slim-buster
# comes from docker hub which loads another docker file.

#Inside Container 
# makes a new folder inside the container 
WORKDIR /backend-flask

# Outside the container -> Inside the container 
# This contains the lib we want to install to run the app
COPY requirements.txt requirements.txt

#Inside the container
# Install the python lib used for the app 
RUN pip3 install -r requirements.txt


# Outside the container > Inside Container
# . means everything in the current director 
# first . means /backend-flask (outside container)
# second . reps /back-endflask (inside container )
COPY . .


#Set env variables 
# Inside container and will remain set when the container is running 
ENV FLASK_ENV=development

EXPOSE ${PORT}
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0", "--port=4567"]