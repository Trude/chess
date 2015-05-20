source 'https://rubygems.org'
ruby '2.1.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.1.0'

# # for rake deploy
# gem 'net-ssh', '2.8.0'


# gem 'settingslogic'
gem 'haml'
# gem 'nokogiri'
# gem "devise"
# gem 'newrelic_rpm'

# Gems used only for assets and not required
# in production environments by default.
# group :assets do
gem 'sass-rails',   '~> 4.0.3'
gem 'coffee-rails', '~> 4.0.1'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', :platform => :ruby
gem 'uglifier', '>= 2.5.0'
# gem "chosen-rails", "~> 1.1.0"
gem 'jquery-rails'
# gem 'jquery-ui-rails'
# end

gem 'newrelic_rpm'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'
gem 'pg'
# gem 'jquery-datatables-rails', '~> 2.2.3'

# group :assets do
gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'
gem 'jquery-ui-rails'
# end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '~> 0.4.0',          group: :doc
end


gem 'aws-s3'
gem 'aws-sdk'
gem 'rails_12factor'
gem 'puma'


group :development, :test do
  gem "rspec-rails" # needs to be in development as well to get generators
  # gem "timecop", "~> 0.7.1"
  # gem "heroku" # to run heroku commands..
  # gem "taps"
  gem 'priscilla'
  gem 'jasmine-jquery-rails'
end

group :development do
  # use rubocop to ensure code quality
  gem 'rubocop'
end

group :test do
  # gem 'database_cleaner'
  # gem 'fakeweb'
  # gem "email_spec", "~> 1.5.0"
  gem 'cucumber'
  gem 'cucumber-rails', require: false # have to set require to false in order to run 'bundle exec rake db:migrate RAILS_ENV=test'
  gem 'capybara'
  gem 'poltergeist'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'simplecov', require: false
  # gem 'rack_session_access'
  # gem 'webmock'
  gem 'nyan-cat-formatter'
end

# Use unicorn as the web server
# gem 'unicorn'
# And use foreman in dev mode to test unicorn
gem 'foreman', group: 'development'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'
