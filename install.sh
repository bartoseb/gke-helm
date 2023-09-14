#!/usr/bin/env bash

set -e
set -x

# install apk packages
apk update
apk --no-cache add ca-certificates gnupg openssl

gcloud components install -q kubectl gke-gcloud-auth-plugin

# install helm
curl --silent --show-error --fail --location --output get_helm.sh https://raw.githubusercontent.com/kubernetes/helm/master/scripts/get
chmod 700 get_helm.sh
./get_helm.sh --version "${HELM_VERSION}"
rm get_helm.sh
