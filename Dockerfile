FROM google/cloud-sdk:446.0.0-alpine

ENV HELM_VERSION v3.12.3

COPY install.sh /tmp/install.sh

RUN chmod +x /tmp/install.sh && /tmp/install.sh
