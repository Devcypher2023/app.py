# Rollback Runbook

## Purpose
This document explains how to roll back to a previous image version.

## Rollback Steps
1. Identify previous working image tag in Docker Hub
2. SSH into EC2
3. Run:
   docker pull USERNAME/standardized-cicd-app:OLD_TAG
4. Stop current container:
   docker stop cicd-app && docker rm cicd-app
5. Start old version:
   docker run -d --name cicd-app -p 5000:5000 -e APP_VERSION="USERNAME/standardized-cicd-app:OLD_TAG" USERNAME/standardized-cicd-app:OLD_TAG
6. Validate:
   curl http://localhost:5000/health