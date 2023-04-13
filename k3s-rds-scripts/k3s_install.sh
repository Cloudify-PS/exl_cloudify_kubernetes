#!/bin/bash


# Install K3S
curl -sfL https://get.k3s.io | INSTALL_K3S_VERSION=v1.26.1+k3s1 sh -s - server --datastore-endpoint="postgres://k3s:k3Sp4sSw0rD@${RDS_HOSTNAME}:${RDS_PORT}/k3s"
mkdir -p /home/ubuntu/kube
sudo cp /etc/rancher/k3s/k3s.yaml /home/ubuntu/kube/.config
sudo chown -R ubuntu:ubuntu /home/ubuntu/kube

# Save K3S kubeconfig
kubeconfig_raw=$(sudo cat /etc/rancher/k3s/k3s.yaml)
kubeconfig="${kubeconfig_raw/127.0.0.1/${PUBLIC_IP}}"
ctx instance runtime-properties "kubeconfig" "${kubeconfig}"
