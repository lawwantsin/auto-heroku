#!/bin/bash

# Cleans the app from your account.
# Warning: Auto-confirms, so you don't have to.
heroku apps:destroy -a $1 --confirm $1
