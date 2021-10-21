#!/bin/bash

git_current_branch=$(git branch --show-current)
export DATABASE_NAME="${DATABASE_BASE_NAME}_$git_current_branch"
export DATABASE_ROOT_HOST=%

# Use for local env without docker
export DATABASE_URL="$DATABASE_BASE_URL/${DATABASE_BASE_NAME}_$git_current_branch"

docker-compose down
docker-compose up -d

