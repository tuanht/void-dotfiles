#!/bin/bash

git_current_branch=$(git branch --show-current)
export DATABASE_NAME="${DATABASE_BASE_NAME}_$git_current_branch"
export DATABASE_ROOT_HOST=%
docker-compose stop
docker-compose up -d

