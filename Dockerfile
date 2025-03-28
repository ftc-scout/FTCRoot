# does not work with alpine
FROM ruby:2.7.8

EXPOSE 3000

WORKDIR /app

RUN apt-get update -qq && apt-get install -y nodejs

RUN gem install bundler -v 2.4.22

COPY . .

# Remove below 2 lines for development mode
ENV RAILS_ENV=production
ENV SECRET_KEY_BASE=your_secret_key_base_here

ENV DISABLE_DATABASE_ENVIRONMENT_CHECK=1

RUN bundle install

ARG DATABASE_PASSWORD
ENV FTCROOT_DATABASE_PASSWORD=$DATABASE_PASSWORD

RUN rails db:create db:schema:load

RUN rails init:load init:T init:M init:N init:O

RUN rails assets:precompile

# Start the main process.
CMD ["rails", "s"]

# sudo docker image build . -t ftcscout/ftcroot