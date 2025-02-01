#!/bin/bash
set -e

# Stop and remove existing container if it exists
docker stop flask-app || true
docker rm flask-app || true
