FROM python:3.6-buster

#Set the present working directory.
WORKDIR /app

#Copy the dependencies file from your host to the present working directory.
COPY requirements.txt .

#To install all dependencies or pip packages.
RUN pip install -r requirements.txt

#Copy the rest of your app’s source code from
#your machine to the present working directory of the container.
COPY . .

#CMD is the command to run on container start.
#It specifies some metadata in your image that describes how to run a container based on this image.
#In this case, it’s saying that the containerized process that this image is meant to support
# is python app.py. There can be only one CMD command
#per Dockerfile, if in case there is more, the last CMD command will take effect.

CMD ["python", "app.py"]

# to build docker image run the below command
#docker image build -t python-dockerizer .

# to re-run a docker container on same port:
# docker container ls
# get the container id from above command
# docker stop container-id