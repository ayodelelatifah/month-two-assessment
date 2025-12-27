# MuchToDo: High-Availability Golang API

This repository contains a fully containerized Golang API integrated with MongoDB and Redis, orchestrated using Kubernetes.

## 🚀 Project Overview
This project demonstrates a transition from local development to a production-ready Kubernetes environment, featuring:
* **Multi-stage Docker builds** for optimized image sizing.
* **High Availability** with 2+ replicas and automated health checks.
* **Persistent Storage** using Kubernetes PVCs for MongoDB.
* **Ingress Routing** via Nginx Ingress Controller.

## 📁 Repository Structure
* `/kubernetes`: YAML manifests for Deployments, Services, and Ingress.
* `/scripts`: Automation scripts for build and deployment.
* `/evidence`: Screenshots confirming successful implementation.
* `Dockerfile`: Optimized Go build file.

## 🛠️ How to Deploy

### 1. Local Docker Compose
```bash
./scripts/docker-run.sh
```

### 2. Kubernetes (Kind)
Ensure your Kind cluster is running, then execute:
```bash
./scripts/k8s-deploy.sh
```

## 📝 Assessment Hurdles & Solutions
Detailed documentation of challenges (permissions, networking, and authentication) can be found in my [Medium Article](YOUR_MEDIUM_LINK_HERE).
