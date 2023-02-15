FROM ruby:3.2.1-bullseye

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

RUN mkdir /usr/src/rails-docker
WORKDIR /usr/src/rails-docker

COPY Gemfile Gemfile.lock ./

RUN bundle install

