#!/bin/bash

heroku apps:create $1
git push heroku master
heroku run rake db:migrate
heroku open
