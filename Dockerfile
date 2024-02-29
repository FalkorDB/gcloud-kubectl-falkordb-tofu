FROM google/cloud-sdk:alpine

# Update and install redis and kubectl
RUN apk --update add redis kubectl

RUN echo '@community https://dl-cdn.alpinelinux.org/alpine/edge/community' >> /etc/apk/repositories && \
  apk add opentofu@community

# Install gke-gcloud-auth-plugin
RUN gcloud components install gke-gcloud-auth-plugin