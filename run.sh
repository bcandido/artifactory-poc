#!/bin/bash

up() {
  echo "Spining up MySQL"
  docker-compose up -d mysql
  echo "waiting MySQL get ready"
  sleep 20

  echo "Spining up Artifactory"
  docker-compose up -d artifactory
  sleep 3
  for i in {1..10}; do
    HEALTH=$(curl -sS http://localhost:8081/artifactory/api/system/ping)
    if [ "$HEALTH" == "OK" ]; then
      echo "[ok] Artifactory is Health!!"; break
    else
      echo "[fail] Artifactory is not health yet"
      sleep 3
    fi
  done
}

down() {
  docker-compose down
}

help() {
  echo "arguments: up|down"
}

case $1 in
  up)
    up
    ;;
  down) 
    down
    ;;
  *)
    help 
    ;;
esac