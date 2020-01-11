#!/bin/bash

# install Python 3.7
sudo yum install python37 -y

# install pip 
curl -O https://bootstrap.pypa.io/get-pip.py
python3 get-pip.py --user

# install ansible
pip install ansible --user