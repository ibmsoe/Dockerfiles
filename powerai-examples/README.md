# IBM PowerAI Examples Docker Image
This project stores a Dockerfile for deploying a IBM PowerAI docker image to the NIMBIX public cloud with example Jupyter notebooks for Caffe, Torch, Tensorflow and NVidia DIGITS and Tensorboard.

[DockerHub image] (https://hub.docker.com/r/ipoddaribm/powerai-examples/)

## To run in the NIMBIX public cloud on IBM POWER containers with GPUs: 
1. register at [Jarvice] (https://power.jarvice.com)

2. create a [PushToCompute] (https://www.nimbix.net/pushtocompute-work-flow-deployment-guide/) app with DockerHub tag: ipoddaribm/powerai-examples/

3. launch a server with Machine Type as POWER

4. Connect to the server at the following ports from your browser (substitute nimbixinstance with the domain name for your server container):

  4.1 Caffe examples: (http://nimbixinstance:8888/notebooks/examples/00-classification.ipynb) 

  4.2 Torch examples: (http://nimbixinstance:8889/notebooks/examples/01-iTorch_Demo.ipynb)

  4.3 Tensorflow examples: (http://nimbixinstance:8890/notebooks/TensorFlow-Examples/notebooks/2_Basic_Models/logistic_regression.ipynb)

  4.4 DIGITS: (http://nimbixinstance:5000)

  4.5 Tensorboard: (http://nimbixinstance:6006)
  
  4.6 To get the token for the Jupyter notebook list, ssh into your container and run: sudo su; jupyter notebook list"



