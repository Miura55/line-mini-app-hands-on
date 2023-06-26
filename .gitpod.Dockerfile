FROM gitpod/workspace-full:2023-03-24-02-48-18

# Install AWS CLI V2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && sudo ./aws/install \
  && rm -rf awscliv2.zip aws

USER gitpod

# Export Environment Variables
ENV NODE_OPTIONS=--openssl-legacy-provider

COPY . ./line-mini-app-hands-on
