#!/bin/bash


# Install K3S
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.26.1+k3s1 sh -s - server --datastore-endpoint="postgres://k3s:k3Sp4sSw0rD@${RDS_HOSTNAME}:${RDS_PORT}/k3s"
mkdir -p /home/ubuntu/kube
chown -R ubuntu:ubuntu /home/ubuntu/kube
cp /etc/rancher/k3s/k3s.yaml /home/ubuntu/kube/.config

# Save K3S kubeconfig
kubeconfig=$(sudo cat /etc/rancher/k3s/k3s.yaml)
ctx instance runtime-properties "kubeconfig" "${kubeconfig}"
