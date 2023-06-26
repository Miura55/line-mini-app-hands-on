FROM gitpod/workspace-full:2023-03-24-02-48-18

# Install AWS CLI
RUN pip3 install awscli --upgrade --user

USER gitpod

COPY . ./line-mini-app-hands-on
