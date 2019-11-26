#!/bin/bash

apt-get -y install python3-{pip,venv,yaml,jinja2}

# to be installed if recommended/suggested is false
apt-get -y install python3-setuptools python3-wheel


# python-tables will install tables version 3.3
# but it does not work. install pytables from pypi.
pip3 install tables==3.4.4

#start-web-dependencies
apt-get -y install zlib1g-dev libjpeg-dev
apt-get -y install python3-numpy
#end-web-dependencies
