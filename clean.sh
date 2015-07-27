#!/bin/bash

heroku apps:destroy -a $1 --confirm $1
