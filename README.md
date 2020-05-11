CircleCI status: [![CircleCI](https://circleci.com/gh/DannyDenver/ml-microservice-kubernetes.svg?style=svg)](https://circleci.com/gh/DannyDenver/ml-microservice-kubernetes)

## Project Overview

In this project, I applied the skills I acquired during Udacity's DevOps nanodegree to operationalize a Machine Learning Microservice API. 

I was given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests my ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

The project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project I:
* Test my project code using linting
* Complete a Dockerfile to containerize this application
* Deploy my containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that my code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

---

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
    Install docker locally: https://docs.docker.com/get-docker/
* Setup and Configure Kubernetes locally
    Install minikube to run kubernestes locally: https://kubernetes.io/docs/tasks/tools/install-minikube/
* Make sure to turn on minikube: minikube start
* Create Flask app in Container
    Run command: './run_docker.sh'
* Run via kubectl
    Run command: './run_kubernetes.sh'

### Files in Repository

* /.circleci: contains CircleCI's automated testing configuration file
* /model_data: ML files for calculating home price
* app.py: contains flask endpoint for making request to predict the house price 
* Dockerfile: configuration for docker image
* make_prediction.sh: bash file for calling api endpoint with configured post request
* run_docker.sh: bash file for building and running Docker image
* run_kubernetes.sh: bash file for running docker image pulled from remote repo and forwarding port to host
* upload_docker.sh: bash file for uploading docker image to remote repo 
