FROM gitpod/workspace-full

# Install AWS CLI V2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
  && unzip awscliv2.zip \
  && sudo ./aws/install \
  && rm -rf awscliv2.zip aws

USER gitpod

# Export Environment Variables
ENV NODE_OPTIONS=--openssl-legacy-provider
RUN npm install --location=global serverless@3.20

COPY . ./line-mini-app-hands-on
