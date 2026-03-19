# Deployment Runbook

## Purpose
This document explains how the application is deployed to AWS EC2.

## Deployment Method
- Code is pushed to GitHub
- GitHub Actions builds Docker image
- Image is pushed to Docker Hub
- Deployment workflow connects to EC2
- EC2 pulls image and runs container
- Health endpoint is checked

## Validation
- Visit /
- Visit /health
- Confirm correct image version appears