FROM ruby:2.7.3

RUN gem install bundler --version 2.1.4

RUN apt-get update -qq && \
    apt-get install -y apt-transport-https && \
    curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -qq && \
    apt-get install -y \
    nodejs \
    yarn \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app