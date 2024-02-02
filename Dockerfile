FROM google/cloud-sdk:alpine

# Update and install redis and kubectl
RUN apk --update add redis kubectl
