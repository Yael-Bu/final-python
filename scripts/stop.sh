#!/bin/bash
set -e

# Stop and remove existing container if it exists
sudo docker stop flask-app || true
sudo docker rm flask-app || true
