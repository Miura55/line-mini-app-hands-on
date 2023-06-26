FROM node:18-buster 

# Install Yarn
RUN npm install -g yarn

# Install AWS CLI
RUN pip3 install awscli --upgrade --user

USER gitpod

COPY . ./line-mini-app-hands-on 
