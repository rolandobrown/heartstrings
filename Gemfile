source 'https://rubygems.org'

# gem 'whenever', require: false
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'rails', '4.2.4'
# Use sqlite3 as the database for Active Record

# #add bootstrap
gem 'bootstrap-sass', '~> 3.3.5'

gem 'bootstrap-will_paginate'
gem 'will_paginate'

#font awesome
gem "font-awesome-rails"

#send emails
gem "dotenv-rails"
gem 'sendgrid'

# gem 'mailboxer'
# #add bootstrap 4
# gem 'bootstrap', git: 'https://github.com/twbs/bootstrap-rubygem'

#Bower Rails
gem "bower-rails", "~> 0.10.0"

#add sprockets rails
gem 'sprockets-rails', '~> 2.3.2'

#add simple form
gem 'simple_form'

#add sprockets
gem 'sprockets', '~> 3.3.3'

#all file upload
gem 'carrierwave'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

#use Puma as server
gem 'puma'

# Adds methods to set and authenticate against a BCrypt password.
gem 'bcrypt', '~> 3.1.7'

#use Devise authetication
gem 'devise'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

#Use Capistrano for deployment
gem 'capistrano', '~> 3.4.0'
gem 'capistrano-rails', group: :development

group :development do
  gem "rails-erd"
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'sqlite3'
  gem 'pry'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

#Tooltips and popovers depend on tether for positioning. If you use them, add tether to the Gemfile:

source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.1.0'
end

group :production do
  gem 'rails_12factor'
  gem 'pg'
end
