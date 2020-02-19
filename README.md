[![CircleCI](https://circleci.com/gh/fbaileyjr/udacity_cloud_devops_project_5.svg?style=svg)](https://circleci.com/gh/fbaileyjr/udacity_cloud_devops_project_5)

## Project Overview - Udacity description listed below

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API. 

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

This project's goal is to make sure that this is a working microservice using [kubernetes](https:/kubernetes.io), which is an open-source system for automating the management of containerized applications. Below are the steps tasks outline and any associated issues I came across.

* Test your project code using linting - I had a problem with a w1202 error, updated the Makefile to exclude it per [forum](https://knowledge.udacity.com/questions/59386)
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application - added additional log info, as per project instructions
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested - configured VCS in cirlceci to detect any changes in the repo and rerun


**This is the final implementation of my project.**

---

## Setting up the Environment

* Cloned the DevOps_Microservices repo using git to my local PC
```git clone https://github.com/udacity/DevOps_Microservices.git
cd DevOps_Microservices/project-ml-microservice-kubernetes
```
* Created and activated the new environment
```
mkdir ~/.devops
python3 -m venv ~/.devops
source ~/.devops/bin/activate
```
* Run `make install` to install the necessary dependencies
```
make install
```
* Installed Hadolint locally on my Mac
```
brew install hadolint
```
* Installed virtualbox and minikube
```
brew cask install virtualbox
brew cask install minikube
```

### Running `app.py`

1. Tested with my local python version 3.7.3:  `python app.py`. Updated to include additional logging.
2. Updated the `./run_docker.sh` script and ran in docker
3. Updated the  `./run_kubernetes.sh` script and ran in minikube

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl
