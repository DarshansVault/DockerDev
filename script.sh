#!/bin/bash

set -e 

if [ ! d "./src" ]; then
		echo "src directory not found!"
		exit 1
fi
echo "src/ directory found."
cleanup() {
  docker-compose -f docker-compose.dev.yml down
}
echo "🚀 Starting development server..."
docker-compose -f docker-compose.dev.yml up
echo "🌐 Open: http://localhost:8080"

trap cleanup SIGINT EXIT