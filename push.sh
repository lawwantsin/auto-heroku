#!/bin/bash

heroku create
git push heroku master
heroku run rake db:migrate
heroku open
