#!/bin/bash

heroku apps:create $1
if ! grep -q "gem 'pg'" "Gemfile";
  then
  echo "gem 'pg'" >> Gemfile
  bundle install
fi
git add .
git commit -m "added bg to gemfile"
git push heroku master
heroku run rake db:migrate
heroku open
