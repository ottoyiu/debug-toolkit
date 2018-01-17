#!/bin/sh
# Test the sanity of the Kluster
set -e
set -x

# 1. Service IP availability, checks kube-proxy health
curl -k https://$KUBERNETES_SERVICE_HOST

# 2. internal DNS availability, kube-dns test
nslookup kubernetes.default.svc

# 3. DNS availability, kube-dns delegation test
nslookup google.com
