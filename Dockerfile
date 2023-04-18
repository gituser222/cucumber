FROM ruby:2.6.6-alpine3.13

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN bundle install
CMD ["bundle exec cucumber"]
