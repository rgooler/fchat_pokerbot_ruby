FROM ruby:2.4.1-alpine
ADD . /src
WORKDIR /src
RUN apk add --update alpine-sdk --no-cache && \
    gem install bundler && \
    bundle install && \
    apk del alpine-sdk
CMD ["bundle", "exec", "rake", "runbot"]
