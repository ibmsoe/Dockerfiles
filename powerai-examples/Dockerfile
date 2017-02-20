FROM jarvice/ubuntu-ibm-mldl-ppc64le

#add Jupyter
RUN pip install notebook pyyaml

#add startupscripts
RUN apt-get install -y supervisor
WORKDIR /root
ADD startjupyter.sh /root/ 
ADD startdigits.sh  /root/
ADD starttensorboard.sh /root/ 
ADD conf.d/* /etc/supervisor/conf.d/
ADD rc.local /etc/rc.local

#add iTorch kernel
WORKDIR /opt/DL/torch/examples
RUN git clone https://github.com/facebook/iTorch.git
WORKDIR iTorch
RUN /bin/bash -c "source /opt/DL/torch/bin/torch-activate && luarocks make"

#add tensorflow examples 
WORKDIR /opt/DL/tensorflow
RUN git clone https://github.com/aymericdamien/TensorFlow-Examples.git


