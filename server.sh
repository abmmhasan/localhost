#!/bin/bash

case "$1" in
  start | reload)
    docker compose up -d
    ;;
  stop)
    docker compose down
    ;;
  reboot | restart)
    docker compose down
    docker compose up -d
    ;;
  rebuild)
    docker compose down
    docker compose build --no-cache
    docker compose up -d --force-recreate
    ;;
  cli)
    docker exec -it Core bash -c "sudo -u devuser /bin/bash"
    ;;
  *)
    docker compose $@
    ;;
esac
