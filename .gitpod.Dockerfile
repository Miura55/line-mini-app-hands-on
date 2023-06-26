FROM gitpod/workspace-full:2023-03-24-02-48-18

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash - && \
    apt-get install -y nodejs

# Install Yarn
RUN npm install -g yarn

# Install AWS CLI
RUN pip3 install awscli --upgrade --user

USER gitpod

COPY . ./line-mini-app-hands-on 
