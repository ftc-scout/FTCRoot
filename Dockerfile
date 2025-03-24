# does not work with alpine
FROM ruby:2.7.8

EXPOSE 3000

WORKDIR /app

COPY . .

RUN gem install bundler -v 2.4.22

RUN bundle install

RUN apt-get update -qq && apt-get install -y nodejs

RUN rails db:create db:schema:load


RUN rails init:load init:T init:M init:N init:O

# Start the main process.
CMD ["rails", "s"]

# sudo docker image build . -t ftcscout/ftcroot