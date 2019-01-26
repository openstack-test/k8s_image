#!/usr/bin/bash

images=(
    kube-apiserver-amd64:v1.7.5
    kube-controller-manager-amd64:v1.7.5
    kube-proxy-amd64:v1.7.5
    kube-scheduler-amd64:v1.7.5
    pause-amd64:3.0
    etcd-amd64:3.0.17
    k8s-dns-dnsmasq-nanny-amd64:1.14.4
    k8s-dns-kube-dns-amd64:1.14.4
    k8s-dns-sidecar-amd64:1.14.4
)

for imageName in ${images[@]} ; do
    docker pull xiaoxu780/$imageName
    docker tag xiaoxu780/$imageName gcr.io/google_containers/$imageName
    docker rmi xiaoxu780/$imageName
done
