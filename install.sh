#! /usr/bin/bash

#update system and install curl
sudo apt update && sudo apt install curl

#install node version 20
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

#install python
sudo apt install python3.10

#install poetry and add to path
curl -sSL https://install.python-poetry.org | python3 -
export PATH="$HOME/.local/bin:$PATH"

#install jitsi dependencies
cd jitsi-meet 
npm install

cd .. 

#install api dependencies
cd deepfake-api
poetry install

cd ..

#install AI repository dependencies
cd Capstone-ai
poetry install

cd .. 

#install grad_project_feature_extraction dependencies
cd grad_project_feature_extraction
poetry install
npm install 

cd..