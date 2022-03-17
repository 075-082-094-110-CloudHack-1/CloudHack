# syntax=docker/dockerfile:1

# TODO use the `mongo` image
FROM python:3.9.7

WORKDIR /flaskapp

# copy the app directory and any files needed for your implementation from your local to the container
COPY . .

# equip it with all the packages and installs needed to run the flask app (packages are defined in app/requirements.txt. `pip install -r app/requirements.txt`)
RUN pip3 install -r requirements.txt

# TODO expose the port flask app will run on
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0:5001"]