# BV-Food-Bank
## Description
CSCE 606 Project

## Development in Windows
Windows doesn't support puma's worker mode

So, if deploy on heroku, uncomment the first line in ./config/puma.rb:

workers Integer(ENV['WEB_CONCURRENCY'] || 2)
