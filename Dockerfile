FROM ruby:3.1.2
# Set environment variables
ENV RAILS_ENV=production
ENV HOST=test-service-294471701511.us-central1.run.app

# Install dependencies and build the app
WORKDIR /app
COPY . /app
RUN bundle install

# Precompile assets for production
RUN bundle exec rake assets:precompile

# Expose port and set entrypoint
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]