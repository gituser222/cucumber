FROM jruby:9.3

ENV TZ=Australia/Sydney

# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY .bundle/config /usr/local/bundle/
COPY Gemfile Gemfile.lock ./
RUN bundle install
RUN rm /usr/local/bundle/config

COPY . .

CMD ["./runtests.sh"]