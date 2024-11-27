FROM ruby:3.1.2
# Set environment variables
ENV RAILS_ENV=production
ENV HOST=test-service-294471701511.us-central1.run.app
ENV SECRET_KEY_BASE= "4f323691dcd5614df92735ab35f1f3add05ee20d98ca87aea88e100b4090ea21832fd1071f3b2607f4014ba3485385aaf489999b2f97032002b500f6e2875788"

# Install dependencies and build the app
WORKDIR /app
COPY . /app
RUN bundle install

# Precompile assets for production
RUN bundle exec rake assets:precompile

# Expose port and set entrypoint
EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]

ENV SECRET_KEY_BASE= "4f323691dcd5614df92735ab35f1f3add05ee20d98ca87aea88e100b4090ea21832fd1071f3b2607f4014ba3485385aaf489999b2f97032002b500f6e2875788"