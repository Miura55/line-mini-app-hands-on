FROM jsii/superchain:1-buster-slim-node14

ARG AWS_CLI_V2_URL='https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip'
ARG SESSION_MANAGER_PLUGIN='https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb'


USER root:root
# install jq wget
RUN apt-get update && apt-get install -y jq wget

RUN mv $(which aws) /usr/local/bin/awscliv1 && \
  curl "${AWS_CLI_V2_URL}" -o "/tmp/awscliv2.zip" && \
  unzip /tmp/awscliv2.zip -d /tmp && \
  /tmp/aws/install

# install session-manager-plugin(required for aws ssm start-session)
RUN curl "${SESSION_MANAGER_PLUGIN}" -o "session-manager-plugin.deb" && \
  dpkg -i session-manager-plugin.deb && \
  rm -f session-manager-plugin.deb

USER superchain:superchain
