# [Linux Test Project(LTP)](https://linux-test-project.github.io/) execution with [Software Testing Automation Framework(STAF)](http://staf.sourceforge.net/) on PowerPC LE

The Dockerfile contains all the steps necessary for the setup

Four other files are, namely STAF.cfg, staf.sh, entry_script.sh and ltp.xml which are required for creating the STAF+LTP image.
 
STAF.CFG and staf.sh - Contains STAF and STAX parameters and environmental variables that are required for STAF/STAX setup.
 
entry_script.sh - Does all the configurations required,like Starting the STAF process and then starting the LTP tests using STAF.
 
ltp.xml - Contains the list of LTP tests to be executed.
 
Building :
docker build -t image_name -f Dockerfile.ppc64le .
 
Running :
docker run -it --privileged --name=ltptest --hostname=ltptest image_id
 
Monitoring :
docker exec -it container_id /bin/bash

STAF local STAX LIST jobs

STAF local STAX list job job_id  testcases

Authors : VinuthaGS-vinuthags@in.ibm.com SasiThumati-sasi.thumati@in.ibm.com

