#!/bin/bash
        
yum update -y
yum install python3 -y 

yum install pip -y
pip install flask

FOLDER="https://raw.githubusercontent.com/omer2021/Cfn-CLI/main"

cd /home/ec2-user/
mkdir templates

wget $FOLDER/app.py
cd templates 
wget $FOLDER/templates/index.html
wget $FOLDER/templates/result.html

cd .. 
python3 app.py