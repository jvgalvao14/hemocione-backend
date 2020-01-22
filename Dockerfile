FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN gem install bundler

WORKDIR /srv/backend

