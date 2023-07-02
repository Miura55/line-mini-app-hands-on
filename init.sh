#!/bin/bash

npm install -g serverless@3.20.0
export NODE_OPTIONS=--openssl-legacy-provider && yarn install 
export NODE_OPTIONS="--max-old-space-size=1024"
