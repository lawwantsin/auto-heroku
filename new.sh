#!/bin/bash

# Create heroku app.
# Warning: namespace is global so a lot of names may be taken.  Leave blank and they'll choose one for you.
heroku apps:create $1

# Install Heroku specific gems if not already there.

if ! grep -q "gem 'pg'" "Gemfile"
  then
  echo "gem 'pg'" >> Gemfile
fi

if ! grep -q "gem 'rails_12factor'" "Gemfile"
  then
  echo "gem 'rails_12factor'" >> Gemfile
fi

bundle install

# Commit latest changes.
git add .
git commit -m "ready for heroku"
git push heroku master

# Setup DB.
heroku run rake db:migrate
heroku open
