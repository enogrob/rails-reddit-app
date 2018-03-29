FROM rails:latest
MAINTAINER Roberto Nogueira <enogrob@gmail.com>

# Install dependencies.
# RUN apt-get update \
  # capybara-webkit
  # && apt-get install -y libqt4-dev libqtwebkit-dev \
  # cleanup
  # && apt-get clean \
  # && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Deploy Rails App.
WORKDIR /usr/src/app
ADD Gemfile* ./
# RUN gem install bundler && bundle install
RUN gem install bundler && bundle install
