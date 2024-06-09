FROM jruby:9.3

ENV TZ=Australia/Sydney

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .
RUN cucumber --tag @regression -f pretty -f json -o results.json
RUN report_builder -o my_report_file
