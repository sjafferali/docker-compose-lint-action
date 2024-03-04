#!/bin/sh -l

COMPOSE_PATH="$1"

if [[ ! -f "$COMPOSE_PATH" ]]; then
    echo "$COMPOSE_PATH not found"
    exit 1
fi

echo checking "$COMPOSE_PATH"
docker compose -f "$COMPOSE_PATH" config
