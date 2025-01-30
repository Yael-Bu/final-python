#!/bin/bash
echo "Validating Flask application..."
sleep 5
curl -f http://localhost:5001/api/ || exit 1
