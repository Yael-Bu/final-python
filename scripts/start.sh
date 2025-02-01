#!/bin/bash
set -e

# Pull latest Docker image
docker pull yaelbuchman/flask-app:latest

# Run the container
docker run -d --name flask-app -p 5001:5000 yaelbuchman/flask-app:latest
