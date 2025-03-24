# How to setup this stuff

I'm assuming that you are running macOS or Linux with Ruby installed, because installing Ruby is a pain on Windows.  If you don't have Ruby, install Homebrew (https://brew.sh) and install Ruby. (Google that)

## First time

1. Clone this repo
2. `cd` to the repo
3. Ensure a local MYSQL server is running
4. Edit [/config/database.yml](/config/database.yml) to the correct database username/password
5. Setup tables with ```rails db:create db:schema:load```

## Updating everything to the latest stuff

6. Type ```bundle install``` to install the gems
7. To load teams, events, and other stuff, run ```rails init:load init:T init:M init:N init:O```.  This will take some time!  Note that the order of these commands matters; if the order is wrong, some data may not show up right (e.g. matches now showing on a team's page).

## To Run the Server

Run ```rails s```.  The URL to go to is: http://localhost:3000
