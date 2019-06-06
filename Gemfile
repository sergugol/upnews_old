source 'http://rubygems.org'

gem 'rails', '~>3.0'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# 2012-02-16  after message: Could not found a JavaScript runtime
gem 'execjs'
gem 'therubyracer'
gem 'thin'

# 2013-04-23
gem 'seed_dump', :git => 'https://github.com/zenprogrammer/seed_dump.git'

# 2013-04-30
gem 'will_paginate', '~> 3.0' 

# 2013-05-13, for image-files uploading #
gem 'paperclip', '~> 3.0'

gem 'rmagick' 
gem 'mini_magick'

gem 'devise'
#gem 'friendly_id', github: 'FriendlyId/friendly_id', branch: 'master'

gem 'sunspot_rails'
gem 'progress_bar'

#  Note: This task has been moved to the sunspot_solr gem. To install, start and
#  stop a local Solr instance, please add sunspot_solr to your Gemfile:
gem 'sunspot_solr'

group :test do
	gem 'sqlite3'    
end

group :development do
	gem 'sqlite3'    
end

group :production do
	gem 'mysql2'
	#gem 'pg'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'
gem 'rvm-capistrano',  require: false 

gem 'rake'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

#2015-07-06 on error "Error installing rails: i18n requires Ruby version >= 1.9.3."
gem 'i18n', '0.6.11'
#gem 'turbolinks', '~> 5.2'