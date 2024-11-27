FROM ruby:3.2
WORKDIR /app
COPY Gemfile* /app/
RUN bundle install
COPY . /app/
CMD ["rails", "server", "-b", "0.0.0.0"]
