source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'image_processing', '~> 1.2'
gem 'importmap-rails'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4'
gem 'redis', '~> 4.0'
gem 'sprockets-rails'
gem 'sqlite3', '~> 1.4'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'turbo-rails'

gem 'devise'
gem 'devise-tailwindcssed', github: 'invenio-br/devise-tailwindcssed'
gem 'enumerate_it'
gem 'heroicon'
gem 'lookbook', '~> 0.9.1'
gem 'simple_form'
gem 'slim'
gem 'slim-rails'
gem 'view_component'

gem 'bootsnap', require: false
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'awesome_print'
  gem 'better_errors', '>= 2.7.1'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.1'
  gem 'faker'
  gem 'pry'
  gem 'pry-nav'
  gem 'pry-rails'
  gem 'rspec-rails'

  # Linting tools
  gem 'rubocop'
  gem 'rubocop-rails'
end

group :development do
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
end
