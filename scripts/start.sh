#!/bin/bash
echo "Starting Flask application..."
docker stop flask-app || true
docker rm flask-app || true
docker pull yaelbuchman/flask-app
docker run -d -p 5000:5000 --name flask-app yaelbuchman/flask-app
