# Use base image with python
FROM ubuntu:20.04

# Define environment variable
ENV BRANCH="mysql"

RUN apt update
RUN echo y | apt install software-properties-common
RUN echo y | add-apt-repository ppa:deadsnakes/ppa
RUN apt update
# RUN echo y | apt-get install python3.9 python3-pip unzip python3-virtualenv mysql-server 
RUN echo y | apt install python3-dev python3-pip python3-virtualenv mysql-server libmysqlclient-dev unzip
# RUN apt-get install unzip
# RUN mysql --version

# Download and unpack source code
# In a real project you'll use `ADD ./src`
ADD https://github.com/allburov/django-helloworld/archive/${BRANCH}.zip /tmp/app.zip
RUN unzip /tmp/app.zip -d /tmp/app && mv /tmp/app/django-helloworld-${BRANCH} /app

# Make /app working directory
WORKDIR /app

# Install dependencies
RUN pip3 install -r requirements.txt

# Share port
EXPOSE 8000

# Command to run project
CMD python3 manage.py migrate && python3 manage.py runserver 0.0.0.0:8000 --noreload