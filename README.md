# Weekend Code - Twitter Clone - Team One

This app has the purpose of being a twitter clone, reproducing new features and serving as a study for the [OneBitCode](http://onebitcode.com/) BootCamp

## Our technilogies

- Rails
- [Docker](https://docs.docker.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [Materialize](http://materializecss.com/)
- [CodeShip](https://codeship.com/)

## Home Screen

 (coming soon...)

## First setup for running

At first, you need to setup some configurations after clonning the repo to your local machine.

### Setup in your machine

 As we use docker, we have a _docker-compose.yml_ for it.

 The _database.yml_ as default is configured as below:

 ```yaml
 default: &default
   adapter: postgresql
   encoding: unicode
   pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
   host: postgres
   user: postgres

 development:
   <<: *default
   database: twitter-clone-teamone_development

 test:
   <<: *default
   database: twitter-clone-teamone_test

 production:
   <<: *default
   database: twitter-clone-teamone_production
   username: twitter-clone-teamone
   password: <%= ENV['TWITTER-CLONE-TEAMONE_DATABASE_PASSWORD'] %>

 ```

 To get everything up and running with [docker-compose](https://docs.docker.com/compose/), follow the steps below:

 ```sh
 1. docker-compose build
 2. docker-compose run --rm website bundle install
 3. docker-compose run --rm website bundle exec rails db:create
 4. docker-compose run --rm website bundle exec rails db:migrate
 5. docker-compose up
 ```
