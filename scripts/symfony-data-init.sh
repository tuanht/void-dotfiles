#!/bin/sh

git_current_branch=$(git branch --show-current)
export DATABASE_URL="$DATABASE_BASE_URL/${DATABASE_BASE_NAME}_$git_current_branch"
symfony console doctrine:database:drop --force --if-exists
symfony console doctrine:database:create --if-not-exists
symfony console doctrine:migration:migrate --no-interaction
symfony console doctrine:fixtures:load --no-interaction --append

