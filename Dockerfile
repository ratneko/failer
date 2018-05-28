FROM ruby:2.5.1-alpine3.7

RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache \
      alpine-sdk \
      tzdata \
      mysql-dev \
      nodejs

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundle && \
    bundle install
