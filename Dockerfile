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

ENV SECRET_KEY_BASE= "75adb933db7a931b1ae591dcebd5aed211a8f982ed1e289fbf4a6a98e8cba38c61a2d5e89e41fb3a67dcadfe51fcb12117d2dc00f1d$""