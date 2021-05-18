#!/bin/sh

# Create/Update Namespace prova
echo "Appying namespace prova..."
kubectl apply -f ../namespace/ns.yaml

# Deployment simpleapp in the namespace prova
echo "Deployment simpleapp in the namespace prova..."
kubectl apply -f ../simpleapp/simpleapp.yaml

# Create service for the simpleapp 
echo "Creating service for the simpleapp..."
kubectl apply -f ../simpleapp/simpleapp-svc.yaml

# Configmap for the simpleapp
echo "Configmap for the simpleapp..."
kubectl apply -f ../simpleapp/simpleapp-cm.yaml

# Ingress Nginx for the simpleapp
echo "Ingress Nginx for the simpleapp..."
kubectl apply -f ../ingress/challenge-ingress.yaml

