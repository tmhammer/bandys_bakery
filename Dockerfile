FROM ruby:2.2.2
RUN apt-get update -qq && apt-get install -y build-essential libgmp-dev libpq-dev nodejs ruby-dev
RUN mkdir /bandys_bakery
WORKDIR /bandys_bakery
COPY Gemfile /bandys_bakery/Gemfile
COPY Gemfile.lock /bandys_bakery/Gemfile.lock
RUN gem install bundler
RUN bundle install
COPY . /bandys_bakery