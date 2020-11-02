source 'https://rubygems.org'

#################################################
# Core
#################################################

gem 'rails', '>= 5.0.0.rc1', '< 5.1'    # Ruby on Rails
gem 'pg'                                # Use Postgres with ActiveRecord
gem 'puma', '~> 3.12'                   # Use Puma as the app server

#################################################
# Assets
#################################################

# Stylesheets
gem 'sass-rails', '~> 5.0'              # Use SCSS for stylesheets
gem 'bourbon'                           # A lightweight Sass tool set

# Javascript
gem 'uglifier', '>= 1.3.0'              # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.1.0'          # Use CoffeeScript for .coffee assets and views
gem 'therubyracer', platforms: :ruby    # Embed the V8 Javascript Interpreter into Ruby
gem 'jquery-rails'                      # Use jquery as the JavaScript library
gem 'turbolinks', '~> 5.x'              # Makes navigating your web application faster
gem 'jbuilder', '~> 2.0'                # Build JSON APIs with ease

#################################################
# Miscellaneous
#################################################

gem 'redis', '~> 3.0'                   # Use Redis adapter to run Action Cable
gem 'bcrypt', '~> 3.1.7'                # Use ActiveModel has_secure_password
gem 'oauth'                             # For both OAuth clients and servers

#################################################
# Environment-Specific
#################################################

group :development, :test do
  gem 'pry-rails'                       # An IRB alternative and runtime developer console
end

group :development do
  gem 'web-console'                        # Access an IRB console on exception pages or by using <%= console %> anywhere
  gem 'listen', '~> 3.0.5'                 # Listens for file modifications and notifies you about the changes
  gem 'spring'                             # Speeds up development by keeping your application running in the background
  gem 'spring-watcher-listen', '~> 2.0.0'  # Make Spring watch for changes using Listen rather than polling the filesystem
  gem 'capistrano-rails'                   # Use Capistrano for deployment
end
