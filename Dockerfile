FROM ruby:2.6.6-alpine3.13

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY . /usr/src/app

RUN gem install bundler:2.1.4
RUN bundle install
RUN echo $PWD
RUN cd features
RUN echo "ls"
RUN ls
CMD ["cucumber", "bundle", "exec", "features/test1.feature"]
