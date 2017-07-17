#!/bin/bash
echo 'Stopping processes in production (mysql, nginx, sunspot, unicorn)...'

cd ~
cd upnews
rake sunspot:solr:stop RAILS_ENV="production"
sudo service nginx stop
sudo service mysql stop
pkill unicorn_rails



