#!/bin/bash

# https://toolbelt.heroku.com/standalone
wget -O- https://toolbelt.heroku.com/install.sh | sh

# Get your heroku account first.
heroku login

# makes shell files in this directory executable.
chmod -x *.sh
