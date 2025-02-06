#!/bin/bash
set -e

# Pull latest Docker image
sudo docker pull yaelbuchman/flask-app:latest

# stop and remove if run
sudo docker stop flask-app || true
sudo docker rm flask-app || true

# Run the container
sudo docker run -d --name flask-app -p 5001:5000 yaelbuchman/flask-app:latest
