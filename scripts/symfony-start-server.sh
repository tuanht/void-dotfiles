#!/bin/bash

git_current_branch=$(git branch --show-current)
export DATABASE_URL="$DATABASE_BASE_URL/${DATABASE_BASE_NAME}_$git_current_branch"
symfony server:stop
symfony server:start -d --port=${PORT:-8000}

