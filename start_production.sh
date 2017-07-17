#!/bin/bash
echo 'Starting processes in production...'

sudo service mysql start
sudo service nginx start
rake sunspot:solr:start RAILS_ENV="production"
bundle exec unicorn -c config/unicorn.rb -D -E production
