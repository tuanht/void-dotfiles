#!/bin/sh
php ~/rs/backend-api/bin/console doctrine:database:drop --force
php ~/rs/backend-api/bin/console doctrine:database:create --if-not-exists
php ~/rs/backend-api/bin/console doctrine:migration:migrate --no-interaction
php ~/rs/backend-api/bin/console doctrine:fixtures:load --no-interaction --append
