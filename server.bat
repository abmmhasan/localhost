@echo off

if "%1" == "start" (
    docker compose up -d
) else if %1 == reload (
    docker compose up -d
) else if %1 == up (
    docker compose up -d
) else if %1 == stop (
    docker compose down
) else if %1 == down (
    docker compose down
) else if %1 == reboot (
    docker compose down
    docker compose up -d
) else if %1 == restart (
    docker compose down
    docker compose up -d
) else if %1 == rebuild (
    docker compose down
    docker compose build --no-cache --pull %*
    docker compose up -d
) else if %1 == cli (
    docker exec -it Core bash -c "sudo -u devuser /bin/bash"
) else if %1 == lzd (
    docker exec -it SERVER_TOOLS lazydocker
) else (
    docker exec -it Core %*
)
