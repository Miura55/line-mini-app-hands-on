FROM public.ecr.aws/jsii/superchain:1-buster-slim-node16

ARG AWS_CLI_V2_URL='https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip'
ARG SESSION_MANAGER_PLUGIN='https://s3.amazonaws.com/session-manager-downloads/plugin/latest/ubuntu_64bit/session-manager-plugin.deb'


USER root:root
# install jq wget
RUN apt-get update && apt-get install -y jq wget

USER superchain:superchain
