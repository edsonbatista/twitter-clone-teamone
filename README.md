![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
![rails](https://img.shields.io/badge/Rails-5.0.1-red.svg)
![ruby](https://img.shields.io/badge/Ruby-2.4.0-red.svg)


# Weekend Code - Twitter Clone - Team One

This app has the purpose of being a twitter clone, reproducing new features and serving as a study for the [OneBitCode](http://onebitcode.com/) BootCamp

## Our technologies

- [Rails](http://rubyonrails.org/)
- [Docker](https://docs.docker.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [Materialize](http://materializecss.com/)
- [CodeShip](https://codeship.com/)

## Home Screen

 (coming soon...)

## Contributing to this project

 **1. Fork the project**

 **2. Clone the fork to your machine**

 ```cmd
 git clone git@github.com:YOUR-USERNAME/YOUR-FORKED-REPO.git
 ```

 **3. Set the remote upstream from original repository**

 ```cmd

 cd into/cloned/fork-repo
 git remote add upstream git@github.com:edsonbatista/twitter-clone-teamone.git
 git fetch upstream
 ```
 **4. Submitting Pull Requests:**

 * work on your local branch and submit it to your fork master.

 * Create a PR from your branch to the original repository.

 **5. Syncing a fork**

 [Follow the steps in this link](https://help.github.com/articles/syncing-a-fork/)


## Initial setup

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
 5. docker-compose run --rm website bundle exec rails db:seeds
 5. docker-compose up
 ```
