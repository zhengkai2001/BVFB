ruby '2.3.3'

source 'https://rubygems.org'
gem 'rails'
gem 'puma'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'

gem 'bootstrap-sass'
gem 'bootstrap-select-rails'

gem 'bcrypt'
gem 'faker'
gem 'will_paginate'
gem 'bootstrap-will_paginate'

# guard needs this
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

group :development, :test do
  gem 'sqlite3'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  gem 'rspec-rails'
  gem 'guard-rspec'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'

  # add in hw4
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'ZenTest'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'rails-controller-testing'
  gem 'minitest-reporters'
  gem 'guard'
  gem 'guard-minitest'

  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'simplecov', :require => false
end

group :production do
  gem 'pg'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]