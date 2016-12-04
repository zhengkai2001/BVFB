ruby '2.3.1'

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

# guard needs this
gem 'wdm', '>= 0.1.0' if Gem.win_platform?

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
end

group :development do
  gem 'web-console'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
end

group :test do
  gem 'rails-controller-testing'
  gem 'minitest-reporters'
  gem 'guard'
  gem 'guard-minitest'
end

group :production do
  gem 'pg'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]