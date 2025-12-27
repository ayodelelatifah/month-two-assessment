#!/bin/bash
echo "Deploying to Kubernetes..."
kubectl apply -f kubernetes/namespace.yaml
kubectl apply -f kubernetes/mongodb/
kubectl apply -f kubernetes/backend/
kubectl apply -f kubernetes/ingress.yaml
echo "Waiting for pods to be ready..."
kubectl get pods -n muchtodo-ns
