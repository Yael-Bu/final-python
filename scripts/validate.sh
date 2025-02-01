#!/bin/bash
echo "Validating Flask application..."
sleep 10
curl -f http://localhost:5001/api/ || exit 1
