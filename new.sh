#!/bin/bash

heroku apps:create $1
echo "gem 'pg'" >> Gemfile
git push heroku master
heroku run rake db:migrate
heroku open
