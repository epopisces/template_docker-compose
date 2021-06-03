# syntax=docker/dockerfile:1
# start with the parent image--in this case the latest full python image built on debian, via the '3' shared tag
# for small projects with fewer dependencies, append '-alpine'
# for enterprise-grade proj, explicitly specify an image using simple tags, eg 3.9.5-buster
FROM python:3
# declare one or more ENV vars, space separated inline or one per line.  Some dockerfile commands can then use the env vars as args
ENV PYTHONUNBUFFERED=1
# sets the working directory for RUN, CMD, COPY, ADD, & ENTRYPOINT unstructions.  Will create folder if not already existing
WORKDIR /code
# copy requirements file to filesystem container folder, creating the folder if necessary
COPY requirements.txt /code/
# RUN <command> executes a shell command, RUN ["executable", "param1", "param2"] will run an executable
RUN pip install -r requirements.txt
# copy everything in this dir to the container's /code/ dir
COPY . /code/
# Full reference here: https://docs.docker.com/engine/reference/builder/