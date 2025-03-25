#!/bin/bash

VERSION=$1

if [[ "$VERSION" == "blue" ]]; then
  sed -i 's/127.0.0.1:8002/127.0.0.1:8001/' ./nginx/nginx.conf
elif [[ "$VERSION" == "green" ]]; then
  sed -i 's/127.0.0.1:8001/127.0.0.1:8002/' ./nginx/nginx.conf
else
  echo "Usage: ./switch_version.sh [blue|green]"
  exit 1
fi

docker restart nginx-proxy
echo "Switched to $VERSION"
