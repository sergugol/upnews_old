#!/bin/bash
echo 'Starting processes...'

rake sunspot:solr:start
rails s
