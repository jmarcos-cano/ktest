FROM ruby:2.7

LABEL Name=kontinu-webpage Version=0.0.1
EXPOSE 4000


# throw errors if Gemfile has been modified since Gemfile.lock
RUN bundle config --global && gem install jekyll

WORKDIR /app
COPY . /app

COPY Gemfile ./
RUN bundle install

