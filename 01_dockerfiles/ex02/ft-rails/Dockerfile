FROM ruby:latest

RUN set -ex &&\
    apt-get update &&\
    apt-get upgrade -y &&\
    apt-get install -y \
    sqlite3 \
    nodejs

RUN set -ex &&\
    gem install rails &&\
    gem install bundler

# These only run on ft-rails:on-build
ONBUILD ADD	app /opt/app
ONBUILD WORKDIR	/opt/app
ONBUILD EXPOSE 3000
ONBUILD RUN bundle install
ONBUILD RUN bundle exec rake db:migrate &&\
    bundle exec rake db:seed