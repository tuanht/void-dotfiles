#!/bin/sh

docker-compose exec php-fpm bin/console doctrine:database:drop --force --if-exists
docker-compose exec php-fpm bin/console doctrine:database:create --if-not-exists
docker-compose exec php-fpm bin/console doctrine:migration:migrate --no-interaction
docker-compose exec php-fpm bin/console doctrine:fixtures:load --no-interaction --append

