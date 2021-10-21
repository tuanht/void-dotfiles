#!/bin/sh


git_current_branch=$(git branch --show-current)
export DATABASE_NAME="${DATABASE_BASE_NAME}_$git_current_branch"
export DATABASE_ROOT_HOST=%

docker-compose exec php-fpm bin/console doctrine:database:drop --force --if-exists
docker-compose exec php-fpm bin/console doctrine:database:create --if-not-exists
docker-compose exec php-fpm bin/console doctrine:migration:migrate --no-interaction
docker-compose exec php-fpm bin/console doctrine:fixtures:load --no-interaction --append

