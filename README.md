
[![CircleCI](https://circleci.com/gh/OlanInnovator/myUdacityDevOps_Microservices.svg?style=svg)](https://circleci.com/gh/OlanInnovator/myUdacityDevOps_Microservices)


## Project Overview

The is an applications bundled with automated capabilities to the manage a containerized Python flask applications that allow some levels of predictions using a Machine Learning Microservice API that gets build into a Docker image. It contain a pre-trained:`sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This application shows ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

In this project you will see files:
* Makefile which contained some predetermine commands to : Install, Lint, Setup.
* Dockerfile to containerize the python flask application.
* run_docker.sh and upload_docker.sh to automate the building of docker image, tags and upload onto docker hub/local.
* run_kubernetes.sh to run the Docker Hub container with kubernetes and forward the container port to a host.
* .circleci config that states steps to build and package the application together for quick verification and builds checks


Repo: https://github.com/OlanInnovator/myUdacityDevOps_Microservices.git

Docker: https://hub.docker.com/repository/docker/olaninnovator/myapp_prod3/general

Circle Ci: https://app.circleci.com/pipelines/github/OlanInnovator/myUdacityDevOps_Microservices/31/workflows/522f8eca-f8b6-41ab-ab91-9d991a57ca75/jobs/54

## Setup the Environment

* Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv. 
```bash
python3.7 -m pip install --user virtualenv
# You should have Python 3.7 available in your host. 
# Check the Python path using `which python3`
# Use a command similar to this one:
python3.7 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/Script/activate
```
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
