source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
gem 'pg_search'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# gem 'better_errors'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false
gem 'hashdiff'
gem 'amoeba'
gem 'socialization'
# gem 'thredded', '~> 0.15.4'
gem 'awesome_nested_set'
# gem 'rails_admin', '~> 1.3'
# gem 'rails_admin_clone'
# gem 'rails_admin_rollincode', '~> 1.0'
# gem "rails_admin_import", "~> 2.1"
# gem 'rails_admin_settings'
gem 'jwt'
gem 'rails_api_auth'
gem 'friendly_id', '~> 5.2.0' # Note: You MUST use 5.0.0 or greater for Rails 4.0+
# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
gem 'paper_trail'
gem 'paper_trail-association_tracking'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end
group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem "localtower", github: "damln/localtower"
  gem 'spring-watcher-listen', '~> 2.0.0'
end
gem 'watir'
gem 'iframely'
gem 'seed_dump'
gem 'vandal_ui'
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
gem 'smarter_csv', '~> 1.2', '>= 1.2.3'
gem "octokit", "~> 4.0"
# gem 'jsonapi_suite', '~> 0.7'
# gem 'jsonapi-rails', '~> 0.3.0'
# gem 'jsonapi_swagger_helpers', '~> 0.6', require: false
gem 'jsonapi_spec_helpers', '~> 0.4', require: false
gem 'graphiti'
gem 'graphiti_spec_helpers'
gem 'responders'
gem 'kaminari', '~> 1.0'
gem 'rubocop-rspec'
gem 'rspec-rails', '~> 3.5.2'
group :development, :test do
  gem 'factory_bot_rails', '~> 4.0'
  gem 'faker', '~> 1.7'
  # gem 'swagger-diff', '~> 1.1'
end
gem 'nhtsa'
group :test do
  gem 'database_cleaner', '~> 1.6'
end
gem 'acts_as_votable', '~> 0.11.1'