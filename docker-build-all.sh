#!/bin/bash

SERVICES=(
  config-server
  eureka-server
  api-gateway
  auth-service
  user-service
  job-service
  notification-service
  file-storage
)

for service in "${SERVICES[@]}"; do
  echo "📦 Building $service ..."
  cd "$service" || exit
  mvn clean package -DskipTests
  cd ..
done

echo "✅ All services built successfully."
