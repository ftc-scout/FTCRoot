# How to docker

## Database Setup

Choose a DB password: `export DATABASE_PASSWORD=your_secret_password`

Set up a MySQL DB with `sudo docker run --name ftcroot-mysql -v ~/.docker/ftcroot-mysql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=$DATABASE_PASSWORD -e MYSQL_DATABASE=ftcroot -p 3306:3306 -d mysql:latest --skip-performance-schema --skip-mysqlx && sleep 10 && sudo docker exec -it ftcroot-mysql mysql -u root -p$DATABASE_PASSWORD -e "ALTER USER 'root'@'%' IDENTIFIED BY '$DATABASE_PASSWORD';FLUSH PRIVILEGES;GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' WITH GRANT OPTION;"`

Then, grab the IP used by the container with `sudo docker inspect ftcroot-mysql | grep IPAddress`.  Use this IP in the `config/database.yml` file, under "host".

If you want to change the password, first remove the DB with `rm -r ~/.docker/ftcroot-mysql`, otherwise the password will not change.

## Deploying to production

Generate a long random string for the `SECRET_KEY_BASE` environment variable.  This can be done with `rake secret`.

Put this in the Dockerfile. You will also need it later when running the app.

To deploy the app, run `sudo docker build --build-arg DATABASE_PASSWORD=$DATABASE_PASSWORD -t ftcscout/ftcroot .` in the root directory of the app. This will take about 5 minutes.

Then, run `sudo docker run --name ftcroot -p 3000:3000 -d ftcscout/ftcroot` to start the app.  You can then access the app at `localhost:3000`.

## Deploying to development

You do not need a secret key base for development.
Remove the `ENV RAILS_ENV=production` and `ENV SECRET_KEY_BASE=` lines from the Dockerfile.  All other steps are the same.
