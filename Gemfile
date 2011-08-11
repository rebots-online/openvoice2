source 'http://rubygems.org'

gem 'rails', '3.1.0.rc4'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'pg'

# Asset template engines
gem 'sass-rails', '~> 3.1.0.rc'
gem 'coffee-script'
gem 'uglifier'

gem 'therubyracer-heroku', '~> 0.8.1.pre3'

gem 'jquery-rails'

gem 'thin'

gem 'connfu', :path => './vendor/gems/connfu'

# Bundle is crap so need this for Connfu
gem 'minitest', '2.3.1'
gem 'nokogiri', '1.5.0'
gem 'niceogiri', '0.0.4'
gem 'blather', '0.5.3'
gem 'resque', '1.17.1'

group :development do
  gem 'rspec-rails'
  gem 'foreman'
  gem 'piston'
end

group :test do
  gem 'mocha'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'factory_girl_rails'
  gem 'launchy', '0.3.7' # fixed at an earlier version to avoid deprecation warnings
  gem 'resque_unit'
end