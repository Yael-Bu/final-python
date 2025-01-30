#!/bin/bash
echo "Stopping Flask application..."
docker stop flask-app || true
docker rm flask-app || true
